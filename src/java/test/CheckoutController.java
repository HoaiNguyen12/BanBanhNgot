/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import DAO.BillDAO;
import DAO.BillDetailDAO;
import DAO.ConnectDB;
import DAO.CustomerDAO;
import Model.Bill;
import Model.BillDetail;
import Model.Customer;
import Model.Item;
import Model.User;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CheckoutController {

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String index() {
        return "Order/checkout";
    }

    @RequestMapping(value = "/success", method = RequestMethod.GET)
    public String success() {
        return "Order/success";
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.POST)
    public String checkout(HttpSession session, String name, String sdt, String address, String email, String pay, String note) throws SQLException {

        Customer cus = new Customer();
        CustomerDAO cusd = new CustomerDAO();
        cus.setName_Cus(name);
        cus.setEmail_Cus(email);
        cus.setAddress_Cus(address);
        cus.setPhone_Cus(sdt);
        cusd.addCustomer(cus);

        Statement stmt = ConnectDB.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery("select * from CUSTOMER where email_cus like '"
                + email + "' and phone_cus like '" + sdt+ "'");

        Bill bill = new Bill();
        BillDAO billdao = new BillDAO();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<Item>();
        }
        bill.setId_Cus(rs.getInt("ID_CUS"));
        bill.setDate_Order(new java.sql.Date(System.currentTimeMillis()));
        bill.setPayment(pay);
        bill.setNote_Bill(note);
        bill.setStatus_Bill("Chưa giao hàng");
        billdao.addBill(bill);

        for (Item item : cart) {
            BillDetail bd = new BillDetail();
            BillDetailDAO bdd = new BillDetailDAO();
            bd.setId_Bill(bill.getId_Bill());
            bd.setId_Pr(item.getProduct().getId_Pr());
            bd.setPrice(item.getProduct().getPrice());
            bd.setQuantity(item.getQuantity());
            bdd.addBillDetail(bd);
        }
        //       cart = new ArrayList<Item>();
        session.setAttribute("cart", cart);
        session.setAttribute("totalPrice", 0);
        session.setAttribute("cartNum", 0);
        return "redirect:/success.htm";

    }
}
