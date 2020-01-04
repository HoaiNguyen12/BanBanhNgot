/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import DAO.ConnectDB;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Huong
 */
@Controller
public class SignUpController {

    @RequestMapping(value = "/SignUp", method = RequestMethod.GET)
    public String SignUp(ModelMap modal) {
        return "/Account/SignUp";
    }

    @RequestMapping(value = "/checkSignUp", method = RequestMethod.POST)
    public String CheckSignUp(@ModelAttribute("User") User us, HttpSession session) {
        try {
            Connection connection = ConnectDB.getConnection();
            String sql = "insert into users values (?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, us.getUserName());
            ps.setString(2, us.getFull_Name());
            ps.setString(3, us.getEmail());
            ps.setString(4, us.getPassword());

            ps.executeUpdate();
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return "redirect:/login.htm";
    }

}
