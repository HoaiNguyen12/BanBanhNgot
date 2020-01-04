/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;
/**
 *
 * @author Admin
 */
public class Bill {
    private int Id_Bill;
    private int Id_Cus;
    private Date Date_Order;
    private String Payment;
    private String Note_Bill;
    private String Status_Bill;

    public int getId_Bill() {
        return Id_Bill;
    }

    public void setId_Bill(int Id_Bill) {
        this.Id_Bill = Id_Bill;
    }

    public int getId_Cus() {
        return Id_Cus;
    }

    public void setId_Cus(int Id_Cus) {
        this.Id_Cus = Id_Cus;
    }

    public Date getDate_Order() {
        return Date_Order;
    }

    public void setDate_Order(Date Date_Order) {
        this.Date_Order = Date_Order;
    }

    public String getPayment() {
        return Payment;
    }

    public void setPayment(String Payment) {
        this.Payment = Payment;
    }

    public String getNote_Bill() {
        return Note_Bill;
    }

    public void setNote_Bill(String Note_Bill) {
        this.Note_Bill = Note_Bill;
    }

    public String getStatus_Bill() {
        return Status_Bill;
    }

    public void setStatus_Bill(String Status_Bill) {
        this.Status_Bill = Status_Bill;
    }
}
