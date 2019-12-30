/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.TypeProduct;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class TypeProductDAO {
    public List<TypeProduct> getAllType(){
        List<TypeProduct> list = new ArrayList<TypeProduct>();
        try {
            Connection connection = ConnectDB.getConnection();
            Statement stmt = ConnectDB.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery("select * from type_product");
            while (rs.next()) {
                  TypeProduct pr = new TypeProduct();
                  pr.setId_Type(rs.getInt("Id_Type"));
                  pr.setName_Type(rs.getString("Name_Type"));
                  list.add(pr);
            }
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}
