/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class ConnectDB {
    private static final String DB_URL = "jdbc:sqlserver://localhost:1433;" + "databaseName=WebBanhNgot;";

    private static final String USER_NAME = "hoai";
    private static final String PASSWORD = "hoai112";

    public static Connection getConnection() {
            Connection conn = null;
            try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
                    System.out.println("connect successfully!");
            } catch (ClassNotFoundException | SQLException ex) {
                    System.out.println("connect failure!");
            }
            return conn;
    }
}
