/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class Photo {
    private int Id;
    private String Name_Photo;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getName_Photo() {
        return Name_Photo;
    }

    public void setName_Photo(String Name_Photo) {
        this.Name_Photo = Name_Photo;
    }

    public int getId_Pr() {
        return Id_Pr;
    }

    public void setId_Pr(int Id_Pr) {
        this.Id_Pr = Id_Pr;
    }
    private int Id_Pr;
}
