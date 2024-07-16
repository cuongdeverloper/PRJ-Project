/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class User {
    private int UserID;
    private String UserName;
    private String Password;
    private String Email;
    private int Priority;

    public User() {
    }

    public User(String UserName, String Password, String Email, int Priority) {
        this.UserName = UserName;
        this.Password = Password;
        this.Email = Email;
        this.Priority = Priority;
    }

    public User(int UserID, String UserName, String Password, String Email, int Priority) {
        this.UserID = UserID;
        this.UserName = UserName;
        this.Password = Password;
        this.Email = Email;
        this.Priority = Priority;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getPriority() {
        return Priority;
    }

    public void setPriority(int Priority) {
        this.Priority = Priority;
    }

    @Override
    public String toString() {
        return "User{" + "UserID=" + UserID + ", UserName=" + UserName + ", Password=" + Password + ", Email=" + Email + ", Priority=" + Priority + '}';
    }          
}
