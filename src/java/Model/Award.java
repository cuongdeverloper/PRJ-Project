/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Award {
    private int AwardID;
    private String AwardName;

    public Award() {
    }

    public Award(int AwardID, String AwardName) {
        this.AwardID = AwardID;
        this.AwardName = AwardName;
    }

    public int getAwardID() {
        return AwardID;
    }

    public void setAwardID(int AwardID) {
        this.AwardID = AwardID;
    }

    public String getAwardName() {
        return AwardName;
    }

    public void setAwardName(String AwardName) {
        this.AwardName = AwardName;
    }

    @Override
    public String toString() {
        return "Award{" + "AwardID=" + AwardID + ", AwardName=" + AwardName + '}';
    }
    
}
