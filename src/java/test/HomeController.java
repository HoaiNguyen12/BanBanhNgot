/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import DAO.ProductDAO;
import DAO.TypeProductDAO;
import Model.Product;
import Model.TypeProduct;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; 
/**
 *
 * @author Admin
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(Model model){
        ProductDAO prDAO = new ProductDAO();
        List<Product> list = prDAO.getProductByPage(1,"");
        model.addAttribute("list",list);
        list = prDAO.getProductByPage(1,"where hot = 1");
        model.addAttribute("listHot",list);
        TypeProductDAO Tdao = new TypeProductDAO();
        List<TypeProduct> lType = Tdao.getAllType();
        model.addAttribute("lType",lType);
        model.addAttribute("count", prDAO.countPage(""));
        
        model.addAttribute("offset", 12);
        return "Home/index";
    }
    @RequestMapping(value="/home/new")    
    public String edit(int page,Model m){  
        ProductDAO prDAO = new ProductDAO();  
        int total=12;    
        if(page==1){}    
        else{    
            page=(page-1)*total+1;    
        }     
        List<Product> list=prDAO.getProductByPage(page,"new");    
          m.addAttribute("msg", list);  
        return "viewemp";    
    }    
}
