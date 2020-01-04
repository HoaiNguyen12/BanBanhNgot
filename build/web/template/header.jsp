<%-- 
    Document   : header
    Created on : Dec 30, 2019, 2:01:15 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
                    <li><a href="${pageContext.request.contextPath}/SignUp.htm">Đăng kí</a></li>
                    <li><a href="${pageContext.request.contextPath}/login.htm">${sessionScope.User != null ? sessionScope.User.getFull_Name() : "Đăng nhập"}</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div> <!-- .container -->
    </div> <!-- .header-top -->
    <div class="header-body">
        <div class="container beta-relative">
            <div class="pull-left">
                <a href="${pageContext.request.contextPath}/home.htm" id="logo"><img src="${pageContext.request.contextPath}/resources/Home/images/logo-cake.png" width="200" alt=""></a>
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
                        <a href="${pageContext.request.contextPath}/cart.htm"><i class="glyphicon glyphicon-shopping-cart" style="font-size:15px"></i> Giỏ hàng(<p id="total">${sessionScope.total != null ? sessionScope.total : 0}</p>) </a>
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
                    <li><a href="${pageContext.request.contextPath}/home.htm">Trang chủ</a></li>
                    <li>
                        <a href="#">Sản phẩm</a>
                        <ul class="sub-menu">
                            <c:forEach var="li" items="${lType}">
                                <li><a href="${pageContext.request.contextPath}/products/${li.getId_Type()}.htm">${li.getName_Type()}</a></li>
                            </c:forEach>
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
