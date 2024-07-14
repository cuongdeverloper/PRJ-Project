package Model;

/**
 *
 * @author 1
 */
public class Trailer {
    private int trailerID;
    private Movie MovieID;
    private String imgUrl;
    private String imgBia;
    private String imgPhoto;
    private String videoUrl;

    public Trailer() {
    }

    public Trailer(int trailerID, Movie MovieID, String imgUrl, String videoUrl) {
        this.trailerID = trailerID;
        this.MovieID = MovieID;
        this.imgUrl = imgUrl;
        this.videoUrl = videoUrl;
    }

    public Trailer(int trailerID, Movie MovieID, String imgUrl, String imgBia, String imgPhoto, String videoUrl) {
        this.trailerID = trailerID;
        this.MovieID = MovieID;
        this.imgUrl = imgUrl;
        this.imgBia = imgBia;
        this.imgPhoto = imgPhoto;
        this.videoUrl = videoUrl;
    }

    public String getImgBia() {
        return imgBia;
    }

    public void setImgBia(String imgBia) {
        this.imgBia = imgBia;
    }

    public String getImgPhoto() {
        return imgPhoto;
    }

    public void setImgPhoto(String imgPhoto) {
        this.imgPhoto = imgPhoto;
    }
    
    

    public int getTrailerID() {
        return trailerID;
    }

    public void setTrailerID(int trailerID) {
        this.trailerID = trailerID;
    }

    public Movie getMovieID() {
        return MovieID;
    }

    public void setMovieID(Movie MovieID) {
        this.MovieID = MovieID;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    @Override
    public String toString() {
        return "Trailer{" + "trailerID=" + trailerID + ", MovieID=" + MovieID + ", imgUrl=" + imgUrl + ", videoUrl=" + videoUrl + '}';
    }
    


    public String videoToString() {
        return this.MovieID.toString();
    }

}
