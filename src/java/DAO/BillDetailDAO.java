/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.BillDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Huong
 */
public class BillDetailDAO {
    public void addBillDetail(BillDetail billdetail){
        try {
            Connection connection = ConnectDB.getConnection();
            String sql = "insert into BILL_DETAIL values (?,?,?,?)"; 
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, billdetail.getId_Bill());
            ps.setInt(2, billdetail.getId_Pr());
            ps.setInt(3, billdetail.getQuantity());
            ps.setFloat(4, billdetail.getPrice());
            ps.executeUpdate();
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
