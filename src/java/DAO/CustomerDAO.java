/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Huong
 */
public class CustomerDAO {
    public void addCustomer(Customer cus){
       try {
            Connection connection = ConnectDB.getConnection();
            String sql = "insert into CUSTOMER values (?,?,?,?)"; 
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cus.getName_Cus());
            ps.setString(2, cus.getEmail_Cus());
            ps.setString(3, cus.getAddress_Cus());
            ps.setString(4, cus.getPhone_Cus());
            ps.executeUpdate();
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
