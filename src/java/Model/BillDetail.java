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
public class BillDetail {
    private int Id_Bill;
    private int Id_Pr;
    private int Quantity;
    private float Price;

    public int getId_Bill() {
        return Id_Bill;
    }

    public void setId_Bill(int Id_Bill) {
        this.Id_Bill = Id_Bill;
    }

    public int getId_Pr() {
        return Id_Pr;
    }

    public void setId_Pr(int Id_Pr) {
        this.Id_Pr = Id_Pr;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }
}
