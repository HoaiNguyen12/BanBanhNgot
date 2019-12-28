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
public class Product {
    private int Id_Pr;
    private int Id_Type;
    private String Name_Pr;
    private String Unit;
    private float Price;
    private float Price_Old;
    private String Descriptions;
    private String Image;
    private boolean New;
    private boolean Hot;

    public int getId_Pr() {
        return Id_Pr;
    }

    public void setId_Pr(int Id_Pr) {
        this.Id_Pr = Id_Pr;
    }

    public int getId_Type() {
        return Id_Type;
    }

    public void setId_Type(int Id_Type) {
        this.Id_Type = Id_Type;
    }

    public String getName_Pr() {
        return Name_Pr;
    }

    public void setName_Pr(String Name_Pr) {
        this.Name_Pr = Name_Pr;
    }

    public String getUnit() {
        return Unit;
    }

    public void setUnit(String Unit) {
        this.Unit = Unit;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public float getPrice_Old() {
        return Price_Old;
    }

    public void setPrice_Old(float Price_Old) {
        this.Price_Old = Price_Old;
    }

    public String getDescriptions() {
        return Descriptions;
    }

    public void setDescriptions(String Descriptions) {
        this.Descriptions = Descriptions;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public boolean isNew() {
        return New;
    }

    public void setNew(boolean New) {
        this.New = New;
    }

    public boolean isHot() {
        return Hot;
    }

    public void setHot(boolean Hot) {
        this.Hot = Hot;
    }

    public String getSize() {
        return Size;
    }

    public void setSize(String Size) {
        this.Size = Size;
    }
    private String Size;
}
