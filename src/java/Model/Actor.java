/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author 1
 */
public class Actor {
    private int ActorID;
    private String ActorName;
    private String Nationality;
    private Date DOB;
    private String ActorImg;

    public Actor() {
    }

    public Actor(int ActorID, String ActorName, String Nationality, Date DOB, String ActorImg) {
        this.ActorID = ActorID;
        this.ActorName = ActorName;
        this.Nationality = Nationality;
        this.DOB = DOB;
        this.ActorImg = ActorImg;
    }

    public int getActorID() {
        return ActorID;
    }

    public void setActorID(int ActorID) {
        this.ActorID = ActorID;
    }

    public String getActorName() {
        return ActorName;
    }

    public void setActorName(String ActorName) {
        this.ActorName = ActorName;
    }

    public String getNationality() {
        return Nationality;
    }

    public void setNationality(String Nationality) {
        this.Nationality = Nationality;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    public String getActorImg() {
        return ActorImg;
    }

    public void setActorImg(String ActorImg) {
        this.ActorImg = ActorImg;
    }

    @Override
    public String toString() {
        return "Actor{" + "ActorID=" + ActorID + ", ActorName=" + ActorName + ", Nationality=" + Nationality + ", DOB=" + DOB + ", ActorImg=" + ActorImg + '}';
    }
    
}
