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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
/**
 *
 * @author Admin
 */
@Controller
public class ProductController {
    ProductDAO dao = new ProductDAO();
    TypeProductDAO Tdao = new TypeProductDAO();
    @RequestMapping(value="detail/{id}",method=RequestMethod.GET)    
    public String detailProduct(@PathVariable("id") int id, Model m){    
        Product pr = dao.getDetail(id);
        m.addAttribute("logo","/resources/Home/images/logo-cake.png");
        List<Product> list = dao.getProducts("hot");
        m.addAttribute("listHot",list);  
        list = dao.getProducts("new");
        m.addAttribute("listNew",list);  
        m.addAttribute("item",pr);  
        List<TypeProduct> lType = Tdao.getAllType();
        m.addAttribute("lType",lType);
        return "Product/detail";    
    }  
    
    @RequestMapping(value="products/{id}",method=RequestMethod.GET)    
    public String productsOfType(@PathVariable("id") int id, Model m){  
        m.addAttribute("logo","/resources/Home/images/logo-cake.png");
        List<Product> list = dao.getAllProducts(" where id_type = " + id);
        m.addAttribute("list",list);   
        List<TypeProduct> lType = Tdao.getAllType();
        m.addAttribute("lType",lType);  
        return "Home/products";    
    }  
}
