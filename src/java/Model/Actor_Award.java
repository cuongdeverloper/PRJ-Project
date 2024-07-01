/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Actor_Award {
    private Award AwardID;
    private Actor ActorID;
    private int AwardYear;

    public Actor_Award() {
    }

    public Actor_Award(Award AwardID, Actor ActorID, int AwardYear) {
        this.AwardID = AwardID;
        this.ActorID = ActorID;
        this.AwardYear = AwardYear;
    }

    public Award getAwardID() {
        return AwardID;
    }

    public void setAwardID(Award AwardID) {
        this.AwardID = AwardID;
    }

    public Actor getActorID() {
        return ActorID;
    }

    public void setActorID(Actor ActorID) {
        this.ActorID = ActorID;
    }

    public int getAwardYear() {
        return AwardYear;
    }

    public void setAwardYear(int AwardYear) {
        this.AwardYear = AwardYear;
    }

    @Override
    public String toString() {
        return "Actor_Award{" + "AwardID=" + AwardID + ", ActorID=" + ActorID + ", AwardYear=" + AwardYear + '}';
    }
    
}
