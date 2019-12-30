/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author Admin
 */
//import org.springframework.web.servlet.mvc.Controller;
import DAO.ConnectDB;
import Model.User;
import org.springframework.web.servlet.ModelAndView; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory; 
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController  {
    //@RequestMapping(method = RequestMethod.GET)
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login1(ModelMap modal){
        modal.addAttribute("abc","string");
        return "/Account/login";
    }
    @RequestMapping(value= "/check", method = RequestMethod.POST)
    public String checkLogin(@ModelAttribute("User")User us){
        try {
            Connection connection = ConnectDB.getConnection();
            Statement stmt = ConnectDB.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery("select * from users");
            while (rs.next()) {
                  if(rs.getString("EMAIL") == us.getEmail() && rs.getString("PASSWORD_") == us.getPassword())
                      return "redirect:/home.htm";
            }
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return "redirect:/login.htm";
    }
    
}

