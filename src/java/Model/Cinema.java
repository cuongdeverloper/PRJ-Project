/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Cinema {

    private int CinemaID;
    private String CinemaName;
    private String Country;
    private String City;

    public Cinema() {
    }

    public Cinema(int CinemaID, String CinemaName, String Country, String City) {
        this.CinemaID = CinemaID;
        this.CinemaName = CinemaName;
        this.Country = Country;
        this.City = City;
    }

    public int getCinemaID() {
        return CinemaID;
    }

    public void setCinemaID(int CinemaID) {
        this.CinemaID = CinemaID;
    }

    public String getCinemaName() {
        return CinemaName;
    }

    public void setCinemaName(String CinemaName) {
        this.CinemaName = CinemaName;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    @Override
    public String toString() {
        return "Cinema{" + "CinemaID=" + CinemaID + ", CinemaName=" + CinemaName + ", Country=" + Country + ", City=" + City + '}';
    }

}
