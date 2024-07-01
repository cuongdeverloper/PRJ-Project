/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Movie_Language {
    private Movie MovieID;
    private Language LanguageID;

    public Movie_Language() {
    }

    public Movie_Language(Movie MovieID, Language LanguageID) {
        this.MovieID = MovieID;
        this.LanguageID = LanguageID;
    }

    public Movie getMovieID() {
        return MovieID;
    }

    public void setMovieID(Movie MovieID) {
        this.MovieID = MovieID;
    }

    public Language getLanguageID() {
        return LanguageID;
    }

    public void setLanguageID(Language LanguageID) {
        this.LanguageID = LanguageID;
    }

    @Override
    public String toString() {
        return "Movie_Language{" + "MovieID=" + MovieID + ", LanguageID=" + LanguageID + '}';
    }
    
    
    
    
}
