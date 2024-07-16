
package Model;
public class Movie {
    private int MovieID;
    private Director DirectorID;
    private Genre GenreID;
    private String Title;
    private String RealaseTime;
    private String Plot;
    private String MovieLength;
    private float Rating;
    private String Certificate;
    private int numberOfLikes;
    
    public Movie() {
    }

    public Movie(int MovieID, Director DirectorID, Genre GenreID, String Title, String RealaseTime, String Plot, String MovieLength, float Rating, String Certificate) {
        this.MovieID = MovieID;
        this.DirectorID = DirectorID;
        this.GenreID = GenreID;
        this.Title = Title;
        this.RealaseTime = RealaseTime;
        this.Plot = Plot;
        this.MovieLength = MovieLength;
        this.Rating = Rating;
        this.Certificate = Certificate;
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int MovieID) {
        this.MovieID = MovieID;
    }

    public Director getDirectorID() {
        return DirectorID;
    }

    public void setDirectorID(Director DirectorID) {
        this.DirectorID = DirectorID;
    }

    public Genre getGenreID() {
        return GenreID;
    }

    public void setGenreID(Genre GenreID) {
        this.GenreID = GenreID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getRealaseTime() {
        return RealaseTime;
    }

    public void setRealaseTime(String RealaseTime) {
        this.RealaseTime = RealaseTime;
    }

    public String getPlot() {
        return Plot;
    }

    public void setPlot(String Plot) {
        this.Plot = Plot;
    }

    public String getMovieLength() {
        return MovieLength;
    }

    public void setMovieLength(String MovieLength) {
        this.MovieLength = MovieLength;
    }

    public float getRating() {
        return Rating;
    }

    public void setRating(float Rating) {
        this.Rating = Rating;
    }

    public String getCertificate() {
        return Certificate;
    }

    public void setCertificate(String Certificate) {
        this.Certificate = Certificate;
    }

    public int getNumberOfLikes() {
        return numberOfLikes;
    }

    public void setNumberOfLikes(int numberOfLikes) {
        this.numberOfLikes = numberOfLikes;
    }
    
    
}
    