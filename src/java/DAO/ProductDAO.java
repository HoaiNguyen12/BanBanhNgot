/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO {
    public List<Product> getAllProducts(String type){
        List<Product> list = new ArrayList<Product>();
        try {
            Connection connection = ConnectDB.getConnection();
            Statement stmt = ConnectDB.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery("select top 12 * from product "  + type);
            while (rs.next()) {
                  Product pr = new Product();
                  pr.setDescriptions(rs.getString("Descriptions"));
                  pr.setHot(rs.getBoolean("hot"));
                  pr.setName_Pr(rs.getString("Name_pr"));
                  pr.setId_Pr(rs.getInt("id_pr"));
                  pr.setId_Type(rs.getInt("Id_Type"));
                  pr.setImage("/resources/ImageProduct/" + rs.getString("Image"));
                  pr.setNew(rs.getBoolean("New"));
                  pr.setPrice(rs.getInt("Price"));
                  pr.setPrice_Old(rs.getInt("Price_Old"));
                  pr.setSize(rs.getString("Size"));
                  pr.setUnit(rs.getString("Unit"));
                  list.add(pr);
            }
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> getProducts(String type){
        List<Product> list = new ArrayList<Product>();
        try {
            Connection connection = ConnectDB.getConnection();
            Statement stmt = ConnectDB.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery("select top 3 * from product where " + type + " = 1");
            while (rs.next()) {
                  Product pr = new Product();
                  pr.setDescriptions(rs.getString("Descriptions"));
                  pr.setHot(rs.getBoolean("hot"));
                  pr.setName_Pr(rs.getString("Name_pr"));
                  pr.setId_Pr(rs.getInt("id_pr"));
                  pr.setId_Type(rs.getInt("Id_Type"));
                  pr.setImage("/resources/ImageProduct/" + rs.getString("Image"));
                  pr.setNew(rs.getBoolean("New"));
                  pr.setPrice(rs.getInt("Price"));
                  pr.setPrice_Old(rs.getInt("Price_Old"));
                  pr.setSize(rs.getString("Size"));
                  pr.setUnit(rs.getString("Unit"));
                  list.add(pr);
            }
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Product getDetail(int id){
        try {
            Connection connection = ConnectDB.getConnection();
            Statement stmt = ConnectDB.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery("select * from product where id_pr = " + id);
            while (rs.next()) {
                  Product pr = new Product();
                  pr.setDescriptions(rs.getString("Descriptions"));
                  pr.setHot(rs.getBoolean("hot"));
                  pr.setName_Pr(rs.getString("Name_pr"));
                  pr.setId_Pr(rs.getInt("id_pr"));
                  pr.setId_Type(rs.getInt("Id_Type"));
                  pr.setImage("/resources/ImageProduct/" + rs.getString("Image"));
                  pr.setNew(rs.getBoolean("New"));
                  pr.setPrice(rs.getInt("Price"));
                  pr.setPrice_Old(rs.getInt("Price_Old"));
                  pr.setSize(rs.getString("Size"));
                  pr.setUnit(rs.getString("Unit"));
                  return pr;
            }
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return new Product();
    }
}
