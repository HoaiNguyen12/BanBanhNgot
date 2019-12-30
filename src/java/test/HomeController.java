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
        model.addAttribute("logo","resources/Home/images/logo-cake.png");
        List<Product> list = prDAO.getAllProducts("");
        model.addAttribute("list",list);
        list = prDAO.getAllProducts("where hot = 1");
        model.addAttribute("listHot",list);
        TypeProductDAO Tdao = new TypeProductDAO();
        List<TypeProduct> lType = Tdao.getAllType();
        model.addAttribute("lType",lType);
        return "Home/index";
    }
}
