/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;

import Model.Actor;
import Model.Director;
import Model.Genre;
import Model.Movie;
import Model.Trailer;
import Model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 *
 * @author 1
 */
public class ConnectionDB {

    public static Connection getConnectionWithSqlJdbc() throws Exception {
        Connection con = null;
        String dbUser = "sa";
        String dbPassword = "123456";
        String port = "1433";
        String IP = "127.0.0.1";
        String ServerName = "CUONGSE";
        String DBName = "PRJ_Project1";
        String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

        String dbURL = "jdbc:sqlserver://" + ServerName + ";databaseName=" + DBName + ";encrypt=false;trustServerCertificate=false;loginTimeout=30";
        try {
            Class.forName(driverClass);
            con = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        } catch (SQLException e) {
            System.out.println("error : " + e);
        }
        return con;
    }

    public static User getLogin(String email, String password) {
        ResultSet rs = null;
        User c = null;
        try {
            Connection con = getConnectionWithSqlJdbc();
            PreparedStatement pstmt = con.prepareStatement("select top 1 * from [User] where Email=?");
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
            System.out.println("why rthbsjdffjds");
            if(rs.next()){
                if(rs.getString("Password").equals(password)){
                    c = new User();
                    c.setEmail(email);
                    c.setPassword(password);
                    c.setPriority(rs.getInt("Priority"));
                    c.setUserName(rs.getString("UserName"));
                    c.setUserID(rs.getInt("UserID"));
                }
            }

        } catch (Exception e) {
            System.out.println("error : " + e);
        }
        return c;
    }
    
    public static int generateRandomNumber(int digits) {
        Random random = new Random();
        int min = (int) Math.pow(10, digits - 1); // Minimum value of the random number
        int max = (int) Math.pow(10, digits) - 1; // Maximum value of the random number
        return random.nextInt(max - min + 1) + min;
    }
    
    public static User getSignUp(String email, String password, String name){
        User c = null;
        try{
            Connection con = getConnectionWithSqlJdbc();
            PreparedStatement pstmt = con.prepareStatement("insert into [User] (UserID, UserName, Password, Email)"
                    + "values (?,?,?,?)");
            int rd = generateRandomNumber(9);
            pstmt.setInt(1, rd);
            pstmt.setString(2, name);
            pstmt.setString(3, password);
            pstmt.setString(4, email);
            if(pstmt.execute()){
                c = new User();
                c.setEmail(email);
                c.setPassword(password);
                c.setPriority(0);
                c.setUserName(name);
                c.setUserID(rd);               
            }
        }catch(Exception e){
            
        }
        return c;
        
    }
    public static boolean checkEmail(String Email){
        
        try{
            Connection con = getConnectionWithSqlJdbc();
            PreparedStatement pstmt = con.prepareStatement("select top 1 * from User where Email = ?");
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                return true;
            }
        }catch(Exception e){
        }
        return false;
    }
    

    //10 trailer
    public static List<Trailer> getListTrailer() {
        List<Trailer> list = new ArrayList<>();
        try {
            Connection con = getConnectionWithSqlJdbc();
            PreparedStatement pstmt = con.prepareStatement("SELECT TOP (10) [trailerID],Trailer.MovieID,[MovieLength],[Title],[Plot],[Rating],[Certificate],[imgUrl],[imgBia],[videoUrl],[NumberOfLikes] FROM Trailer inner join Movies on Trailer.MovieID =  Movies.MovieID where RealaseTime >= '2022' order by NEWID()");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                System.out.println("x");
                Trailer trailer = new Trailer();
                Movie movie = new Movie();
                movie.setMovieID(rs.getInt("MovieID"));
                movie.setTitle(rs.getString("Title") != null ? rs.getString("Title") : "");
                movie.setPlot(rs.getString("Plot") != null ? rs.getString("Plot") : "");                
                movie.setMovieLength(rs.getString("MovieLength") != null ? rs.getString("MovieLength") : "");
                movie.setRating(rs.getObject("Rating") != null ? rs.getFloat("Rating") : 0.0f);
                movie.setCertificate(rs.getString("Certificate") != null ? rs.getString("Certificate") : "");
                movie.setNumberOfLikes(rs.getInt("NumberOfLikes"));
                trailer.setTrailerID(rs.getInt("trailerID"));
                trailer.setMovieID(movie);
                
                trailer.setImgUrl(rs.getString("imgUrl") != null ? rs.getString("imgUrl") : "");
                trailer.setImgBia(rs.getString("imgBia") != null ? rs.getString("imgBia") : "");
                trailer.setVideoUrl(rs.getString("videoUrl") != null ? rs.getString("videoUrl") : "");

                list.add(trailer);
            }

        } catch (Exception e) {

        }
        return list;
    }

    public static List<Trailer> getListFanFavorites() {
        List<Trailer> list = new ArrayList<>();
        try {
            Connection con = getConnectionWithSqlJdbc();
            PreparedStatement pstmt = con.prepareStatement("select top 5 "
                    + "Movies.MovieID,"
                    + "Movies.Title,"
                    + "Movies.Rating,"
                    + "Trailer.imgUrl,"
                    + "count(Review.Comment) as comment_count "
                    + "from "
                    + "Movies "
                    + "inner join Trailer on Movies.MovieID = Trailer.MovieID "
                    + "inner join Review on Movies.MovieID = Review.MovieID "
                    + "group by Movies.MovieID, Movies.Title, Movies.Rating, Trailer.imgUrl "
                    + "order by comment_count desc");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Trailer trailer = new Trailer();
                Movie movie = new Movie();
                movie.setMovieID(rs.getInt("MovieID"));

                movie.setTitle(rs.getString("Title") != null ? rs.getString("Title") : "");
                movie.setRating(rs.getObject("Rating") != null ? rs.getFloat("Rating") : (float) 0);

                trailer.setImgUrl(rs.getString("imgUrl") != null ? rs.getString("imgUrl") : "");
                trailer.setMovieID(movie);
                list.add(trailer);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
        return list;

    }

    public static List<Trailer> getTopTenMovies() {
        List<Trailer> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = getConnectionWithSqlJdbc();
            pstmt = con.prepareStatement("WITH RankedMovies AS ( "
                    + "    SELECT "
                    + "        Movies.MovieID, "
                    + "        Movies.Title, "
                    + "        Movies.Rating, "
                    + "        Trailer.imgUrl, "
                    + "        ROW_NUMBER() OVER (PARTITION BY Movies.Title ORDER BY Movies.Rating DESC) AS rn "
                    + "    FROM "
                    + "        Movies "
                    + "    INNER JOIN "
                    + "        Trailer ON Movies.MovieID = Trailer.MovieID "
                    + ") "
                    + "SELECT TOP 10 "
                    + "    MovieID, "
                    + "    Title, "
                    + "    Rating, "
                    + "    imgUrl "
                    + "FROM "
                    + "    RankedMovies "
                    + "WHERE "
                    + "    rn = 1 "
                    + "ORDER BY "
                    + "    Rating DESC;");
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Trailer trailer = new Trailer();
                Movie movie = new Movie();

                movie.setMovieID(rs.getInt("MovieID"));
                movie.setRating(rs.getObject("Rating") != null ? rs.getFloat("Rating") : 0.0f);
                movie.setTitle(rs.getString("Title"));
                trailer.setImgUrl(rs.getString("imgUrl") != null ? rs.getString("imgUrl") : "");
                trailer.setMovieID(movie);

                list.add(trailer);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

        return list;
    }

    public static List<Actor> getPopularCeleb() {
        List<Actor> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            con = getConnectionWithSqlJdbc();
            pstmt = con.prepareStatement("SELECT TOP 50 * "
                    + "FROM Actor "
                    + "ORDER BY NEWID();");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Actor actor = new Actor();
                actor.setActorID(rs.getInt("ActorID"));
                actor.setActorImg(rs.getString("ActorImg"));
                actor.setActorName(rs.getString("ActorName"));
                actor.setDOB((Date) rs.getDate("DoB"));
                list.add(actor);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
 public static List<Trailer> searchMovies(String Title){
        List<Trailer> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = getConnectionWithSqlJdbc();
            pstmt = con.prepareStatement("select top 5 Movies.MovieID,Rating ,MovieLength,Plot,Certificate,NumberOfLikes,  Title, imgUrl, RealaseTime from Movies inner join Trailer on Trailer.MovieID = Movies.MovieID where Title LIKE ?");
            pstmt.setString(1, "%"+Title+"%");
            rs = pstmt.executeQuery();
            
            while(rs.next()){
                Trailer t = new Trailer();
                Movie m = new Movie();
                
                m.setMovieID(rs.getInt("MovieID"));
                m.setRealaseTime(rs.getString("RealaseTime"));
                m.setTitle(rs.getString("Title"));
                m.setNumberOfLikes(rs.getInt("NumberOfLikes"));
                m.setRating(rs.getFloat("Rating"));
                m.setPlot(rs.getString("Plot"));
                m.setCertificate(rs.getString("Certificate"));
                m.setMovieLength(rs.getString("MovieLength"));
                t.setImgUrl(rs.getString("imgUrl"));
                t.setMovieID(m);
                list.add(t);
                              
            }
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return list;
    }
 public static List<Actor> searchActors(String name){
        List<Actor> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = getConnectionWithSqlJdbc();
            pstmt = con.prepareStatement("select top 10 Actor.ActorID, ActorImg, ActorName, Nationality from Actor  where ActorName LIKE ?");          
            pstmt.setString(1, "%"+name+"%");
            rs = pstmt.executeQuery();
            while(rs.next()){
                Actor a = new Actor();
                a.setActorID(rs.getInt("ActorID"));
                a.setActorImg(rs.getString("ActorImg"));
                a.setActorName(rs.getString("ActorName"));
                a.setNationality(rs.getString("Nationality"));
                list.add(a);
                
            }
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return list;
    }
    public static List<Director> getDirectors() {
        List<Director> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            con = getConnectionWithSqlJdbc();
            pstmt = con.prepareStatement(" select top 50 * "
                    + "from Director "
                    + "order by newid()");
            rs = pstmt.executeQuery();
            while(rs.next()){
                Director director = new Director();
                director.setDirectorID(rs.getInt("DirectorID"));
                director.setName(rs.getString("Name"));
                director.setNationality(rs.getString("Nationality"));
                director.setDoB((Date)rs.getDate("DoB"));
                list.add(director);
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
        return list;
    }
public static User getUser(int userID) {
    ResultSet rs = null;
    User user = null;
     Connection con = null;
        PreparedStatement pstmt = null;
    try {
         con = getConnectionWithSqlJdbc();
         pstmt = con.prepareStatement("SELECT * FROM [User] WHERE UserID = ?");
        pstmt.setInt(1, userID);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("UserID"));
            user.setUserName(rs.getString("UserName"));
            user.setPassword(rs.getString("Password"));
            user.setEmail(rs.getString("Email"));
            user.setPriority(rs.getInt("Priority"));
        }

    } catch (Exception e) {
        System.out.println("error : " + e);
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    return user;
}
public static List<Integer> listLikedMovies(int UserID) {
        List<Integer> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            con = getConnectionWithSqlJdbc();
            pstmt = con.prepareStatement("select Movies.MovieID from UserMovieActions inner join Movies on Movies.MovieID = UserMovieActions.MovieID inner join [User] on UserMovieActions.UserID = [User].UserID where [User].UserID = ?");
            pstmt.setInt(1, UserID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt("MovieID"));
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
        return list;
    }
    
    public static Boolean doUnlike(int UserID, int MovieID) throws Exception {
        String checkSQL = "SELECT COUNT(*) FROM UserMovieActions WHERE UserID = ? AND MovieID = ?";
        String updateSQL = "UPDATE Movies SET NumberOfLikes = NumberOfLikes - 1 WHERE MovieID = ?";
        String deleteSQL = "DELETE FROM UserMovieActions WHERE UserID = ? AND MovieID = ?";
        Connection con = null;
        PreparedStatement checkStmt = null;
        PreparedStatement updateStmt = null;
        PreparedStatement deleteStmt = null;
        ResultSet rs = null;

        try {
            con = getConnectionWithSqlJdbc(); // Mở kết nối tới cơ sở dữ liệu của bạn
            con.setAutoCommit(false); // Bắt đầu transaction

            // Kiểm tra xem row có tồn tại không
            checkStmt = con.prepareStatement(checkSQL);
            checkStmt.setInt(1, UserID);
            checkStmt.setInt(2, MovieID);
            rs = checkStmt.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) {
                // Row đã tồn tại, thực hiện update và delete
                updateStmt = con.prepareStatement(updateSQL);
                updateStmt.setInt(1, MovieID);
                updateStmt.executeUpdate();

                deleteStmt = con.prepareStatement(deleteSQL);
                deleteStmt.setInt(1, UserID);
                deleteStmt.setInt(2, MovieID);
                deleteStmt.executeUpdate();
            } else {
                // Row không tồn tại, không cần làm gì cả
                return false;
            }

            con.commit(); // Commit transaction
            return true;
        } catch (Exception e) {
            if (con != null) {
                con.rollback(); // Rollback transaction nếu có lỗi
            }
            e.printStackTrace();
            return false;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (checkStmt != null) {
                checkStmt.close();
            }
            if (updateStmt != null) {
                updateStmt.close();
            }
            if (deleteStmt != null) {
                deleteStmt.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }

    public static Boolean doLike(int UserID, int MovieID) throws Exception {
        String checkSQL = "SELECT COUNT(*) FROM UserMovieActions WHERE UserID = ? AND MovieID = ?";
        String updateSQL = "UPDATE Movies SET NumberOfLikes = NumberOfLikes + 1 WHERE MovieID = ?";
        String insertSQL = "INSERT INTO UserMovieActions (UserID, MovieID) VALUES (?, ?)";
        Connection con = null;
        PreparedStatement checkStmt = null;
        PreparedStatement updateStmt = null;
        PreparedStatement insertStmt = null;
        ResultSet rs = null;

        try {
            con = getConnectionWithSqlJdbc();
con.setAutoCommit(false); // Bắt đầu transaction

            // Kiểm tra xem row có tồn tại không
            checkStmt = con.prepareStatement(checkSQL);
            checkStmt.setInt(1, UserID);
            checkStmt.setInt(2, MovieID);
            rs = checkStmt.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) {
                return false;

            } else {
                // Row chưa tồn tại, thực hiện insert mới và update
                insertStmt = con.prepareStatement(insertSQL);
                insertStmt.setInt(1, UserID);
                insertStmt.setInt(2, MovieID);
                insertStmt.executeUpdate();

                updateStmt = con.prepareStatement(updateSQL);
                updateStmt.setInt(1, MovieID);
                updateStmt.executeUpdate();

            }

            con.commit(); // Commit transaction
            return true;
        } catch (Exception e) {
            if (con != null) {
                con.rollback(); // Rollback transaction nếu có lỗi
            }
            e.printStackTrace();
            return false;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (checkStmt != null) {
                checkStmt.close();
            }
            if (updateStmt != null) {
                updateStmt.close();
            }
            if (insertStmt != null) {
                insertStmt.close();
            }
            if (con != null) {
                con.close();
            }
        }

    }
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null) {
                connection.close();

                System.out.println("Close MySQL successfully!");
            }
        } catch (SQLException ex) {
            System.err.println("Close MySQL failure!");
        }
    }
    
     public static List<Movie> getAllWatchList(int userID) throws Exception {
        List<Movie> watchlist = new ArrayList<>();
        String sql = "SELECT m.MovieID, m.Title, m.ReleaseTime, m.Plot, m.MovieLength, m.Rating, m.Certificate, m.numberOfLikes " +
                     "FROM WatchList w " +
                     "INNER JOIN Movies m ON w.UserID = m.UserID " +
                     "WHERE w.UserID = ?";
        try (Connection con = getConnectionWithSqlJdbc();
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, userID);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Movie movie = new Movie();
                movie.setMovieID(rs.getInt("MovieID"));
                movie.setTitle(rs.getString("Title"));
                movie.setRealaseTime(rs.getString("ReleaseTime"));
                movie.setPlot(rs.getString("Plot"));
                movie.setMovieLength(rs.getString("MovieLength"));
                movie.setRating(rs.getFloat("Rating"));
                movie.setCertificate(rs.getString("Certificate"));
                movie.setNumberOfLikes(rs.getInt("numberOfLikes"));
                watchlist.add(movie);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching watchlist: " + e.getMessage());
        }
        return watchlist;
    }

 public static boolean addToWatchList(int userID, int movieID) throws Exception {
        String sql = "INSERT INTO WatchList (UserID, MovieID) VALUES (?, ?)";
        try (Connection con = getConnectionWithSqlJdbc();
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, userID);
            pstmt.setInt(2, movieID);
            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; // Return true if at least one row was affected
        } catch (SQLException e) {
            System.out.println("Error adding to watchlist: " + e.getMessage());
            throw new Exception("Error adding to watchlist: " + e.getMessage());
        }
    }


public static List<Trailer> get20RandomMovies() {
    List<Trailer> list = new ArrayList<>();
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement("SELECT TOP (8) [trailerID], Trailer.MovieID, [MovieLength], [Title], [Plot], [Rating], [Certificate], [imgUrl], [videoUrl] FROM Trailer INNER JOIN Movies ON Trailer.MovieID = Movies.MovieID ORDER BY NEWID()");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("x");
            Trailer trailer = new Trailer();
            Movie movie = new Movie();
            movie.setMovieID(rs.getInt("MovieID"));
            movie.setTitle(rs.getString("Title") != null ? rs.getString("Title") : "");
            movie.setPlot(rs.getString("Plot") != null ? rs.getString("Plot") : "");                
            movie.setMovieLength(rs.getString("MovieLength") != null ? rs.getString("MovieLength") : "");
            movie.setRating(rs.getObject("Rating") != null ? rs.getFloat("Rating") : 0.0f);
            movie.setCertificate(rs.getString("Certificate") != null ? rs.getString("Certificate") : "");
            trailer.setTrailerID(rs.getInt("trailerID"));
            trailer.setMovieID(movie);
            trailer.setImgUrl(rs.getString("imgUrl") != null ? rs.getString("imgUrl") : "");
            trailer.setVideoUrl(rs.getString("videoUrl") != null ? rs.getString("videoUrl") : "");

            list.add(trailer);
        }

    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return list;
}

public static boolean removeFromWatchList(int userID, int movieID) throws Exception {
    String sql = "DELETE FROM WatchList WHERE UserID = ? AND MovieID = ?";
    try (Connection con = getConnectionWithSqlJdbc();
         PreparedStatement pstmt = con.prepareStatement(sql)) {
        pstmt.setInt(1, userID);
        pstmt.setInt(2, movieID);
        pstmt.executeUpdate();
        return true;
    } catch (SQLException e) {
        System.out.println("Error removing from watchlist: " + e.getMessage());
        return false;
    }
}
public static List<Trailer> getTrailerByMovieId(String movieId) {
     List<Trailer> list = new ArrayList<>();
    Trailer trailer = null;
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT [trailerID], T.[MovieID], T.[imgUrl],T.[videoUrl], " +
            "M.[Title], M.[RealaseTime], M.[Plot], M.[MovieLength], M.[Rating], M.[Certificate] " +
            "FROM Trailer T " +
            "INNER JOIN Movies M ON T.MovieID = M.MovieID " +
            "WHERE T.MovieID = ?"
        );
        pstmt.setString(1, movieId);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            trailer = new Trailer();
            Movie movie = new Movie();
            movie.setMovieID(rs.getInt("MovieID"));
            movie.setTitle(rs.getString("Title") != null ? rs.getString("Title") : "");
            movie.setPlot(rs.getString("Plot") != null ? rs.getString("Plot") : "");  
            movie.setRealaseTime(rs.getString("RealaseTime") != null ? rs.getString("RealaseTime") : "");
            movie.setMovieLength(rs.getString("MovieLength") != null ? rs.getString("MovieLength") : "");
            movie.setRating(rs.getObject("Rating") != null ? rs.getFloat("Rating") : 0.0f);
            movie.setCertificate(rs.getString("Certificate") != null ? rs.getString("Certificate") : "");
            trailer.setTrailerID(rs.getInt("trailerID"));
            trailer.setMovieID(movie);
            trailer.setImgUrl(rs.getString("imgUrl") != null ? rs.getString("imgUrl") : "");
            trailer.setVideoUrl(rs.getString("videoUrl") != null ? rs.getString("videoUrl") : "");
            list.add(trailer);
        }

    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return list;
}
    
    
    public static List<Director> getDirectorNameByMovieId(String movieId) {
             List<Director> list = new ArrayList<>();
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT D.[Name] " +
            "FROM Director D " +
            "INNER JOIN Movie_Director MD ON D.DirectorID = MD.DirectorID " +
            "WHERE MD.MovieID = ?"
        );
        pstmt.setString(1, movieId);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            Director d = new Director();
            d.setName( rs.getString("Name"));
            list.add(d);
        }
    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return list;
}
    
    public static List<String> getLanguagesByMovieId(String movieId) {
    List<String> languages = new ArrayList<>();
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT L.[Language] " +
            "FROM Language L " +
"INNER JOIN Movie_Language ML ON L.LanguageID = ML.LanguageID " +
            "WHERE ML.MovieID = ?"
        );
        pstmt.setString(1, movieId);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            languages.add(rs.getString("Language"));
        }
    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return languages;
}


public static List<String> getGenreNamesByMovieId(String movieId) {
    List<String> genreNames = new ArrayList<>();
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT G.[GenreName] " +
            "FROM Genre G " +
            "INNER JOIN Movies M ON G.GenreID = M.GenreID " +
            "WHERE M.MovieID = ?"
        );
        pstmt.setString(1, movieId);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            genreNames.add(rs.getString("GenreName"));
        }
    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return genreNames;
}


    public static List<Trailer> get6RandomMovies() {
    List<Trailer> list = new ArrayList<>();
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement("SELECT TOP (6) [trailerID], Trailer.MovieID, [MovieLength], [Title], [Plot], [Rating], [Certificate], [imgUrl], [videoUrl] FROM Trailer INNER JOIN Movies ON Trailer.MovieID = Movies.MovieID ORDER BY NEWID()");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("x");
            Trailer trailer = new Trailer();
            Movie movie = new Movie();
            movie.setMovieID(rs.getInt("MovieID"));
            movie.setTitle(rs.getString("Title") != null ? rs.getString("Title") : "");
            movie.setPlot(rs.getString("Plot") != null ? rs.getString("Plot") : "");                
            movie.setMovieLength(rs.getString("MovieLength") != null ? rs.getString("MovieLength") : "");
            movie.setRating(rs.getObject("Rating") != null ? rs.getFloat("Rating") : 0.0f);
            movie.setCertificate(rs.getString("Certificate") != null ? rs.getString("Certificate") : "");
            trailer.setTrailerID(rs.getInt("trailerID"));
            trailer.setMovieID(movie);
            trailer.setImgUrl(rs.getString("imgUrl") != null ? rs.getString("imgUrl") : "");
            trailer.setVideoUrl(rs.getString("videoUrl") != null ? rs.getString("videoUrl") : "");

            list.add(trailer);
        }

    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return list;
}
    
    public static List<Actor> getActorsByMovieId(String movieId) {
    List<Actor> actors = new ArrayList<>();
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
"SELECT A.[ActorID], A.[ActorName], A.[Nationality], A.[DoB], A.[ActorImg] " +
            "FROM Actor A " +
            "INNER JOIN Movie_Actor MA ON A.ActorID = MA.ActorID " +
            "WHERE MA.MovieID = ?"
        );
        pstmt.setString(1, movieId);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Actor actor = new Actor();
            actor.setActorID(rs.getInt("ActorID"));
            actor.setActorName(rs.getString("ActorName"));
            actor.setNationality(rs.getString("Nationality"));
            actor.setDOB(rs.getDate("DoB"));
            actor.setActorImg(rs.getString("ActorImg"));
            actors.add(actor);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return actors;
}
    
    public static List<Actor> getActorById(String actorId) {
     List<Actor> actors = new ArrayList<>();
    Actor actor = null;
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT [ActorID], [ActorName], [Nationality], [DoB], [ActorImg] " +
            "FROM Actor " +
            "WHERE ActorID = ?"
        );
        pstmt.setString(1, actorId);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            actor = new Actor();
            actor.setActorID(rs.getInt("ActorID"));
            actor.setActorName(rs.getString("ActorName"));
            actor.setNationality(rs.getString("Nationality"));
            actor.setDOB(rs.getDate("DoB"));
            actor.setActorImg(rs.getString("ActorImg"));
            actors.add(actor);
            
        }
    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return actors;
}
    
    public static List<Genre> getRandomGenres() {
      List<Genre> genres = new ArrayList<>();
    Genre genre = null;
    try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT TOP 5 [GenreID], [GenreName] " +
                     "FROM [Genre] " +
                     "ORDER BY NEWID()"
        );
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
           genre = new Genre();
            genre.setGenreID(rs.getInt("GenreID"));
                genre.setGenreName(rs.getString("GenreName"));
                genres.add(genre);
            
        }
    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return genres;
}
    
    
    
    public static List<String> getImgBiaLinksByMovieId(String movieId) {
        List<String> imgBiaLinks = new ArrayList<>();
        
         try {
        Connection con = getConnectionWithSqlJdbc();
        PreparedStatement pstmt = con.prepareStatement(
            "SELECT imgPhoto " +
                     "FROM Trailer " +
                     "WHERE MovieID = ?"
        );
        pstmt.setString(1, movieId);
ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            String imgBia = rs.getString("imgPhoto");
                // Split the imgBia string by comma to get individual image links
                imgBiaLinks = Arrays.asList(imgBia.split(",,"));
            
        }
    } catch (Exception e) {
        e.printStackTrace(); // Print exception for better debugging
    }
    return imgBiaLinks;
    
    
            
                    
    }
    public static void main(String args[]) {

        for (Trailer t : getListTrailer()) {
            System.out.println(t.toString());
        }
    }
}
