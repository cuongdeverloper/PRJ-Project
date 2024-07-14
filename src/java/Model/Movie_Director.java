/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Movie_Director {
    private Movie MovieID;
    private Director DirectorID;

    public Movie_Director() {
    }

    public Movie_Director(Movie MovieID, Director DirectorID) {
        this.MovieID = MovieID;
        this.DirectorID = DirectorID;
    }

    public Movie getMovieID() {
        return MovieID;
    }

    public void setMovieID(Movie MovieID) {
        this.MovieID = MovieID;
    }

    public Director getDirectorID() {
        return DirectorID;
    }

    public void setDirectorID(Director DirectorID) {
        this.DirectorID = DirectorID;
    }

    @Override
    public String toString() {
        return "Movie_Director{" + "MovieID=" + MovieID + ", DirectorID=" + DirectorID + '}';
    }
    
}
