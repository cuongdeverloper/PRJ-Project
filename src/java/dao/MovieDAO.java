
package dao;

import Database.ConnectionDB;
import Model.Director;
import Model.Genre;
import Model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO {
    public static List<Movie> searchMovies(String title) {
        List<Movie> movies = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            con = ConnectionDB.getConnectionWithSqlJdbc();
            String query = "SELECT m.MovieID, m.Title, m.RealaseTime, m.Plot, m.MovieLength, m.Rating, m.Certificate, " +
                    "d.DirectorID, d.Name AS DirectorName, d.Nationality AS DirectorNationality, d.DoB AS DirectorDoB, " +
                    "g.GenreID, g.GenreName " +
                    "FROM Movies m " +
                    "INNER JOIN Director d ON m.DirectorID = d.DirectorID " +
                    "INNER JOIN Genre g ON m.GenreID = g.GenreID " +
                    "WHERE m.Title LIKE ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, "%" + title + "%");
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                Movie movie = new Movie();
                movie.setMovieID(rs.getInt("MovieID"));
                movie.setTitle(rs.getString("Title"));
                movie.setRealaseTime(rs.getString("RealaseTime"));
                movie.setPlot(rs.getString("Plot"));
                movie.setMovieLength(rs.getString("MovieLength"));
                movie.setRating(rs.getFloat("Rating"));
                movie.setCertificate(rs.getString("Certificate"));
                
                Director director = new Director();
                director.setDirectorID(rs.getInt("DirectorID"));
                director.setName(rs.getString("DirectorName"));
                director.setNationality(rs.getString("DirectorNationality"));
                director.setDoB(rs.getDate("DirectorDoB"));
                movie.setDirectorID(director);
                
                Genre genre = new Genre();
                genre.setGenreID(rs.getInt("GenreID"));
                genre.setGenreName(rs.getString("GenreName"));
                movie.setGenreID(genre);
                
                movies.add(movie);
            }
        } catch (Exception e) {
            System.out.println("Error in searchMovies: " + e.getMessage());
        } finally {
            // Close resources in reverse order of opening to avoid resource leaks
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }
        
        return movies;
    }


     public List<Movie> getAllMovies() {
        List<Movie> movies = new ArrayList<>();
        String sql = "SELECT * FROM Movies";

        try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Movie movie = new Movie();
                movie.setMovieID(rs.getInt("MovieID"));
                movie.setDirectorID(new Director(rs.getInt("DirectorID"))); 
                movie.setGenreID(new Genre(rs.getInt("GenreID"))); 
                movie.setTitle(rs.getString("Title"));
                movie.setRealaseTime(rs.getString("RealaseTime")); 
                movie.setPlot(rs.getString("Plot"));
                movie.setMovieLength(rs.getString("MovieLength"));
                movie.setRating(rs.getFloat("Rating"));
                movie.setCertificate(rs.getString("Certificate"));
                movies.add(movie);
            }
        } catch (Exception  e) {
            e.printStackTrace();
        }
        return movies;
    }
public int addMovie(Movie movie, String imgUrl, String imgBia, String imgPhoto, String videoUrl) {
    String movieSql = "INSERT INTO Movies (DirectorID, GenreID, Title, RealaseTime, Plot, MovieLength, Rating, Certificate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
         PreparedStatement movieStmt = conn.prepareStatement(movieSql)) {
        
        movieStmt.setInt(1, movie.getDirectorID().getDirectorID());
        movieStmt.setInt(2, movie.getGenreID().getGenreID());
        movieStmt.setString(3, movie.getTitle());
        movieStmt.setString(4, movie.getRealaseTime());
        movieStmt.setString(5, movie.getPlot());
        movieStmt.setString(6, movie.getMovieLength());
        movieStmt.setFloat(7, movie.getRating());
        movieStmt.setString(8, movie.getCertificate());

        int rowsInserted = movieStmt.executeUpdate();

        if (rowsInserted > 0) {
            try (ResultSet generatedKeys = movieStmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    int movieID = generatedKeys.getInt(1);
                    boolean trailerInserted = insertTrailer(movieID, imgUrl, imgBia, imgPhoto, videoUrl);

                    if (trailerInserted) {
                        return movieID; // Trả về MovieID nếu cả Movies và Trailer đều được chèn thành công
                    } else {
                        // Rollback hoặc xử lý khi chèn Trailer thất bại
                        // Tùy vào yêu cầu cụ thể, bạn có thể rollback ở đây nếu cần
                        // conn.rollback();
                    }
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace(); 
    }
    return -1; // Trả về -1 nếu có lỗi xảy ra hoặc không thể lấy được MovieID
}

private boolean insertTrailer(int movieID, String imgUrl, String imgBia, String imgPhoto, String videoUrl) {
    String trailerSql = "INSERT INTO Trailer (MovieID, imgUrl, imgBia, imgPhoto, videoUrl) VALUES (?, ?, ?, ?, ?)";

    try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
            PreparedStatement trailerStmt = conn.prepareStatement(trailerSql)) {
        trailerStmt.setInt(1, movieID);
        trailerStmt.setString(2, imgUrl);
        trailerStmt.setString(3, imgBia);
        trailerStmt.setString(4, imgPhoto);
        trailerStmt.setString(5, videoUrl);

        int rowsInserted = trailerStmt.executeUpdate();
        return rowsInserted > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    }
}



    public boolean updateMovie(Movie movie) {
        String sql = "UPDATE Movies SET DirectorID = ?, GenreID = ?, Title = ?, RealaseTime = ?, Plot = ?, MovieLength = ?, Rating = ?, Certificate = ? WHERE MovieID = ?";
        try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, movie.getDirectorID().getDirectorID());
            stmt.setInt(2, movie.getGenreID().getGenreID());
            stmt.setString(3, movie.getTitle());
            stmt.setString(4, movie.getRealaseTime());
            stmt.setString(5, movie.getPlot());
            stmt.setString(6, movie.getMovieLength());
            stmt.setFloat(7, movie.getRating());
            stmt.setString(8, movie.getCertificate());
            stmt.setInt(9, movie.getMovieID());

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete a movie by ID
  public boolean deleteMovie(String movieID) {
    // Xóa các hàng từ các bảng liên quan trước
    deleteFromRelatedTables(movieID);

    // Sau đó xóa phim từ bảng Movies
    String sql = "DELETE FROM Movies WHERE MovieID = ?";
    try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
         PreparedStatement stmt = conn.prepareStatement(sql)) {

        stmt.setString(1, movieID);

        int rowsDeleted = stmt.executeUpdate();
        return rowsDeleted > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    }
}

private void deleteFromRelatedTables(String movieID) {
    // Xóa dữ liệu từ các bảng liên quan
    String[] relatedTables = {"Trailer", "Movie_Actor", "Movie_Cinema", "Movie_Language", "Movie_Director"};

    for (String tableName : relatedTables) {
        String deleteSql = "DELETE FROM " + tableName + " WHERE MovieID = ?";
        try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
             PreparedStatement stmt = conn.prepareStatement(deleteSql)) {

            stmt.setString(1, movieID);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

    
     public Movie getMovieById(String movieID) {
        Movie movie = null;
        String sql = "SELECT m.MovieID, m.Title, m.RealaseTime, m.Plot, m.MovieLength, m.Rating, m.Certificate, " +
                "d.DirectorID, d.Name AS DirectorName, d.Nationality AS DirectorNationality, d.DoB AS DirectorDoB, " +
                "g.GenreID, g.GenreName " +
                "FROM Movies m " +
                "INNER JOIN Director d ON m.DirectorID = d.DirectorID " +
                "INNER JOIN Genre g ON m.GenreID = g.GenreID " +
                "WHERE m.MovieID = ?";

        try (Connection conn = ConnectionDB.getConnectionWithSqlJdbc();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, movieID);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    movie = new Movie();
                    movie.setMovieID(rs.getInt("MovieID"));
                    movie.setTitle(rs.getString("Title"));
                    movie.setRealaseTime(rs.getString("RealaseTime"));
                    movie.setPlot(rs.getString("Plot"));
                    movie.setMovieLength(rs.getString("MovieLength"));
                    movie.setRating(rs.getFloat("Rating"));
                    movie.setCertificate(rs.getString("Certificate"));

                    Director director = new Director();
                    director.setDirectorID(rs.getInt("DirectorID"));
                    director.setName(rs.getString("DirectorName"));
                    director.setNationality(rs.getString("DirectorNationality"));
                    director.setDoB(rs.getDate("DirectorDoB"));
                    movie.setDirectorID(director);

                    Genre genre = new Genre();
                    genre.setGenreID(rs.getInt("GenreID"));
                    genre.setGenreName(rs.getString("GenreName"));
                    movie.setGenreID(genre);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movie;
    }

    public static void main(String[] args) {
        MovieDAO m = new MovieDAO();
        List<Movie> l = m.searchMovies("Gojira -1.0");
        System.out.println(m.deleteMovie("221"));
        for (Movie s : l) {
            System.out.println(s.toString());
        }
        
    }
         
}


