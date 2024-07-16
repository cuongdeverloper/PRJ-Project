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
public class Director {
    private int DirectorID;
    private String name;
    private String Nationality;
    private Date DoB;

    public Director(int DirectorID) {
        this.DirectorID = DirectorID;
    }
    
    public Director() {
    }

    public Director(int DirectorID, String name, String Nationality, Date DoB) {
        this.DirectorID = DirectorID;
        this.name = name;
        this.Nationality = Nationality;
        this.DoB = DoB;
    }

    public int getDirectorID() {
        return DirectorID;
    }

    public void setDirectorID(int DirectorID) {
        this.DirectorID = DirectorID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNationality() {
        return Nationality;
    }

    public void setNationality(String Nationality) {
        this.Nationality = Nationality;
    }

    public Date getDoB() {
        return DoB;
    }

    public void setDoB(Date DoB) {
        this.DoB = DoB;
    }

    @Override
    public String toString() {
        return "Director{" + "DirectorID=" + DirectorID + ", name=" + name + ", Nationality=" + Nationality + ", DoB=" + DoB + '}';
    }
    
}
