/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.text.Normalizer;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="")
public class ControllerPages {
    
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String viewHome(ModelMap mm) {
        return "sale/index";
    }
    
    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String viewAbout(ModelMap mm) {
        return "sale/about";
    }
   
    @RequestMapping(value = "/product_type", method = RequestMethod.GET)
    public String viewShop(ModelMap mm) {
        return "sale/product_type";
    }

    @RequestMapping(value = "/contacts", method = RequestMethod.GET)
    public String viewContact(ModelMap mm) {
        return "sale/contacts";
    }

    @RequestMapping(value = "/category/{categoryId}", method = RequestMethod.GET)
    public String viewCategory(ModelMap mm, @PathVariable("categoryId") int categoryId) {
        return "sale/product_type";
    }
}