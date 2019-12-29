<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <div id="header" style="height: 225px">
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
                            <li><a href="#">Đăng nhập</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div> <!-- .container -->
            </div> <!-- .header-top -->
            <div class="header-body" style="height: 116px">
                <div class="container beta-relative">
                    <div class="pull-left" >
                        <a href="home.htm" id="logo" >
                            <img src="<c:url value="/resources/sale/image/logo-cake.png"/>" style="width: 200px; height: 78px" alt=""></a>
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
                            <div class="cart">
                                <div class="beta-select"><i class="glyphicon glyphicon-shopping-cart"></i> Giỏ hàng (Trống) <i class="glyphicon glyphicon-chevron-down"></i></div>
                                <div class="beta-dropdown cart-body">
                                    <div class="cart-item">
                                        <div class="media">
                                            <a class="pull-left" href="#"><img src="assets/dest/images/products/cart/1.png" alt=""></a>
                                            <div class="media-body">
                                                <span class="cart-item-title">Sample Woman Top</span>
                                                <span class="cart-item-options">Size: XS; Colar: Navy</span>
                                                <span class="cart-item-amount">1*<span>$49.50</span></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="cart-item">
                                        <div class="media">
                                            <a class="pull-left" href="#"><img src="assets/dest/images/products/cart/2.png" alt=""></a>
                                            <div class="media-body">
                                                <span class="cart-item-title">Sample Woman Top</span>
                                                <span class="cart-item-options">Size: XS; Colar: Navy</span>
                                                <span class="cart-item-amount">1*<span>$49.50</span></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="cart-item">
                                        <div class="media">
                                            <a class="pull-left" href="#"><img src="assets/dest/images/products/cart/3.png" alt=""></a>
                                            <div class="media-body">
                                                <span class="cart-item-title">Sample Woman Top</span>
                                                <span class="cart-item-options">Size: XS; Colar: Navy</span>
                                                <span class="cart-item-amount">1*<span>$49.50</span></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="cart-caption">
                                        <div class="cart-total text-right">Tổng tiền: <span class="cart-total-value">$34.55</span></div>
                                        <div class="clearfix"></div>

                                        <div class="center">
                                            <div class="space10">&nbsp;</div>
                                            <a href="checkout.htm" class="beta-btn primary text-center">Đặt hàng <i class="glyphicon glyphicon-chevron-right"></i></a>
                                        </div>
                                    </div>
                                </div>
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
                            <li><a href="${pageContext.request.contextPath}/product_type.htm">Loại sản phẩm</a>
                                <ul class="sub-menu">
                                    <c:forEach var="item" items="${listCategory}"  >
                                        <li><a href="<c:url value="${pageContext.request.contextPath}/category/${item.categoryId}.html"/>">${item.categoryName}</a></li>
                                    
                                    </c:forEach>
                                    
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/about.htm">Giới thiệu</a></li>
                            <li><a href="${pageContext.request.contextPath}/contacts.htm">Liên hệ</a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </nav>
                </div> <!-- .container -->
            </div> <!-- .header-bottom -->
        </div> <!-- #header -->
