/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;

import Model.Actor;
import Model.Director;
import Model.Movie;
import Model.Trailer;
import Model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
            PreparedStatement pstmt = con.prepareStatement("SELECT TOP (10) [trailerID],Trailer.MovieID,[MovieLength],[Title],[Plot],[Rating],[Certificate],[imgUrl],[imgBia],[videoUrl] FROM Trailer inner join Movies on Trailer.MovieID =  Movies.MovieID where RealaseTime >= '2022' order by NEWID()");
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
            pstmt = con.prepareStatement("select top 5 Movies.MovieID, Title, imgUrl, RealaseTime from Movies inner join Trailer on Trailer.MovieID = Movies.MovieID where Title LIKE ?");
            pstmt.setString(1, "%"+Title+"%");
            rs = pstmt.executeQuery();
            
            while(rs.next()){
                Trailer t = new Trailer();
                Movie m = new Movie();
                
                m.setMovieID(rs.getInt("MovieID"));
                m.setRealaseTime(rs.getString("RealaseTime"));
                m.setTitle(rs.getString("Title"));
                
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

    public static void main(String args[]) {

        for (Trailer t : getListTrailer()) {
            System.out.println(t.toString());
        }
    }
}
