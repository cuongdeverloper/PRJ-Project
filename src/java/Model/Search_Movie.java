/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 1
 */
public class Search_Movie {
    private int MovieID;
    private String imgUrl;
    private String Title;
    private List<String> listActors;

    public Search_Movie() {
        listActors =  new ArrayList<>();
    }

    public Search_Movie(int MovieID, String imgUrl, String Title, List<String> listActors) {
        this.MovieID = MovieID;
        this.imgUrl = imgUrl;
        this.Title = Title;
        this.listActors = listActors;
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int MovieID) {
        this.MovieID = MovieID;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public List<String> getListActors() {
        return listActors;
    }

    public void setListActors(List<String> listActors) {
        this.listActors = listActors;
    }
    public void addActor(String a){
        listActors.add(a);
        
    }

    @Override
    public String toString() {
        return "Search_Movie{" + "MovieID=" + MovieID + ", imgUrl=" + imgUrl + ", Title=" + Title + ", listActors=" + listActors + '}';
    }
    
}
