<%-- 
    Document   : header
    Created on : Dec 30, 2019, 2:01:15 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="header">
    <div class="header-top">
        <div class="container">
            <div class="pull-left auto-width-left">
                <ul class="top-menu menu-beta l-inline">
                    <li><a href=""><i class="glyphicon glyphicon-home"></i> 90-92 Lê Thị Riêng, Bến Thành, Quận 1</a></li>
                    <li><a href=""><i class="glyphicon glyphicon-phone"></i> 0163 296 7751</a></li>
                </ul>
            </div>
            <div class="pull-right auto-width-right">
                <ul class="top-details menu-beta l-inline">
                    <li><a href="#"><i class="glyphicon glyphicon-user"></i>Tài khoản</a></li>
                    <li><a href="#">Đăng kí</a></li>
                    <li><a href="/User/Login">Đăng nhập</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div> <!-- .container -->
    </div> <!-- .header-top -->
    <div class="header-body">
        <div class="container beta-relative">
            <div class="pull-left">
                <a href="index.html" id="logo"><img src="resources/Home/images/logo-cake.png" width="200" alt=""></a>
            </div>
            <div class="pull-right beta-components space-left ov">
                <div class="space10">&nbsp;</div>
                <div class="beta-comp">
                    <form role="search" method="get" id="searchform" action="/">
                        <input type="text" value="" name="s" id="s" placeholder="Nhập từ khóa..." />
                        <button class="glyphicon glyphicon-search" type="submit" id="searchsubmit"></button>
                    </form>
                </div>

                <div class="beta-comp">

                    <!--@{
                        ShoppingCart cart = (ShoppingCart)Session["cart"];
                        int total = 0;
                        double totalMoney = 0.0;
                        if (cart != null)
                        {
                            total = cart.GetTotal();
                            totalMoney = cart.GetTotalMoney();
                        }
                    }-->
                    <div class="cart">
                        <a href="/ShoppingCart/Cart"><i class="glyphicon glyphicon-shopping-cart" style="font-size:15px"></i> Giỏ hàng(@total) </a>
                    </div> <!-- .cart -->
                </div>
            </div>
            <div class="clearfix"></div>
        </div> <!-- .container -->
    </div> <!-- .header-body -->
    <div class="header-bottom" style="background-color: #0277b8;">
        <div class="container">
            <a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="glyphicon glyphicon-bars"></i></a>
            <div class="visible-xs clearfix"></div>
            <nav class="main-menu">
                <ul class="l-inline ov">
                    <li><a href="~/Home/Index">Trang chủ</a></li>
                    <li>
                        <a href="#">Sản phẩm</a>
                        <ul class="sub-menu">
                            @Html.Action("LeftType_Product","Home")
                        </ul>
                    </li>
                    <li><a href="About">Giới thiệu</a></li>
                    <li><a href="Contact">Liên hệ</a></li>
                </ul>
                <div class="clearfix"></div>
            </nav>
        </div> <!-- .container -->
    </div> <!-- .header-bottom -->
</div>
