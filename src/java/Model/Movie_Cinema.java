/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Movie_Cinema {
    private Movie MovieID;
    private Cinema CinemaID;

    public Movie_Cinema() {
    }

    public Movie_Cinema(Movie MovieID, Cinema CinemaID) {
        this.MovieID = MovieID;
        this.CinemaID = CinemaID;
    }

    public Movie getMovieID() {
        return MovieID;
    }

    public void setMovieID(Movie MovieID) {
        this.MovieID = MovieID;
    }

    public Cinema getCinemaID() {
        return CinemaID;
    }

    public void setCinemaID(Cinema CinemaID) {
        this.CinemaID = CinemaID;
    }

    @Override
    public String toString() {
        return "Movie_Cinema{" + "MovieID=" + MovieID + ", CinemaID=" + CinemaID + '}';
    }
    
    
}
