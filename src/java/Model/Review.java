/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Review {
    private int ReviewID;
    private User UserID;
    private Movie MovieID;
    private String Comment;

    public Review() {
    }

    public Review(int ReviewID, User UserID, Movie MovieID, String Comment) {
        this.ReviewID = ReviewID;
        this.UserID = UserID;
        this.MovieID = MovieID;
        this.Comment = Comment;
    }

    public int getReviewID() {
        return ReviewID;
    }

    public void setReviewID(int ReviewID) {
        this.ReviewID = ReviewID;
    }

    public User getUserID() {
        return UserID;
    }

    public void setUserID(User UserID) {
        this.UserID = UserID;
    }

    public Movie getMovieID() {
        return MovieID;
    }

    public void setMovieID(Movie MovieID) {
        this.MovieID = MovieID;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String Comment) {
        this.Comment = Comment;
    }

    @Override
    public String toString() {
        return "Review{" + "ReviewID=" + ReviewID + ", UserID=" + UserID + ", MovieID=" + MovieID + ", Comment=" + Comment + '}';
    }
    
    
}
