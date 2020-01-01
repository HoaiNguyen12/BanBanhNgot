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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import Model.Item;
import DAO.ProductDAO;

@Controller
public class CartController {

	@RequestMapping(value = "/cart",method = RequestMethod.GET)
	public String index() {
		return "ShoppingCart/cart";
	}

	@RequestMapping(value = "/buy", method = RequestMethod.POST)
        @ResponseBody
	public void buy(int id, HttpSession session) {
		ProductDAO productModel = new ProductDAO();
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(productModel.getDetail(id), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				cart.add(new Item(productModel.getDetail(id), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
                if (session.getAttribute("total") == null) session.setAttribute("total", 1);
                else {
                    String i = session.getAttribute("total").toString();
                    session.setAttribute("total", Integer.parseInt(i) + 1);
                }
                
		
	}

	@RequestMapping(value = "/cart/remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") int id, HttpSession session) {
		ProductDAO dao = new ProductDAO();
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
                String i = session.getAttribute("total").toString();
                session.setAttribute("total", Integer.parseInt(i) - cart.get(index).getQuantity());
		return "redirect:/cart.htm";
	}

	private int exists(int id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId_Pr() == id) {
				return i;
			}
		}
		return -1;
	}
        
}