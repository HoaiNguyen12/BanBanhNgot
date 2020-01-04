/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Bill;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Huong
 */
public class BillDAO {
    public void addBill(Bill bill){
       try {
            Connection connection = ConnectDB.getConnection();
            String sql = "insert into BILL values (?,?,?,?,?)"; 
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, bill.getId_Cus());
            ps.setDate(2,bill.getDate_Order());
            ps.setString(3, bill.getPayment());
            ps.setString(4, bill.getNote_Bill());
            ps.setString(5, bill.getStatus_Bill());
            ps.executeUpdate();
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
