/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Movie_Actor {
    private Movie MovieID;
    private Actor ActorID;

    public Movie_Actor() {
    }

    public Movie_Actor(Movie MovieID, Actor ActorID) {
        this.MovieID = MovieID;
        this.ActorID = ActorID;
    }

    public Movie getMovieID() {
        return MovieID;
    }

    public void setMovieID(Movie MovieID) {
        this.MovieID = MovieID;
    }

    public Actor getActorID() {
        return ActorID;
    }

    public void setActorID(Actor ActorID) {
        this.ActorID = ActorID;
    }

    @Override
    public String toString() {
        return "Movie_Actor{" + "MovieID=" + MovieID + ", ActorID=" + ActorID + '}';
    }
    
    
    
}
