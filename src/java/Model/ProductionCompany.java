/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class ProductionCompany {
    private int CompanyID;
    private String CompanyName;

    public ProductionCompany() {
    }

    public ProductionCompany(int CompanyID, String CompanyName) {
        this.CompanyID = CompanyID;
        this.CompanyName = CompanyName;
    }

    public int getCompanyID() {
        return CompanyID;
    }

    public void setCompanyID(int CompanyID) {
        this.CompanyID = CompanyID;
    }

    public String getCompanyName() {
        return CompanyName;
    }

    public void setCompanyName(String CompanyName) {
        this.CompanyName = CompanyName;
    }

    @Override
    public String toString() {
        return "ProductionCompany{" + "CompanyID=" + CompanyID + ", CompanyName=" + CompanyName + '}';
    }
    
}
