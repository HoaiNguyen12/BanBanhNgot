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
import Model.User;
import org.springframework.web.servlet.ModelAndView; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory; 
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Date; 
import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value="/login")
public class LoginController  {
    
    //@RequestMapping(method = RequestMethod.GET)
    @RequestMapping()
    public String login1(ModelMap model){
        String now = LocalDateTime.now().toString();
        model.addAttribute("now",123);
        return "Account/login";
    }
    @RequestMapping(value="/check",method = RequestMethod.POST)
    public String checkLogin(@ModelAttribute("emp") User emp){
        String now = LocalDateTime.now().toString();
        
        return "Account/login";
    }
    //protected final Log logger = LogFactory.getLog(getClass()); 
    //public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
    //        throws ServletException, IOException { 
    //    String now = (new Date()).toString();
    //    logger.info("Returning hello view with " + now); 
    //    return new ModelAndView("WEB-INF/jsp/hello.jsp", "now", now);
    //} 
}

