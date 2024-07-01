/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author 1
 */
public class Language {
    private int LanguageID;
    private String language;

    public Language() {
    }

    public Language(int LanguageID, String language) {
        this.LanguageID = LanguageID;
        this.language = language;
    }

    public int getLanguageID() {
        return LanguageID;
    }

    public void setLanguageID(int LanguageID) {
        this.LanguageID = LanguageID;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Override
    public String toString() {
        return "Language{" + "LanguageID=" + LanguageID + ", language=" + language + '}';
    }
    
    
}
