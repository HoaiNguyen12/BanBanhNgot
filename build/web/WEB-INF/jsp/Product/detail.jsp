<%-- 
    Document   : detail
    Created on : Dec 30, 2019, 5:40:26 PM
    Author     : Admin
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi tiết sản phẩm</title>
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/Home/css/font-awesome.min.css">
        <link rel="stylesheet" href="../resources/Home/colorbox.css">
        <link rel="stylesheet" href="../resources/css1/settings.css">
        <link rel="stylesheet" href="../resources/css1/responsive.css">
        <link rel="stylesheet" title="style" href="../resources/Home/css/style.css">
        <link rel="stylesheet" href="../resources/Home/css/animate.css">
        <link rel="stylesheet" title="style" href="../resources/Home/css/huong-style.css">
        <link href="../resources/PagedList.css" rel="stylesheet" />
        
        <link href="../resources/Admin/vendor.bundle.addons.css" rel="stylesheet" />
        <link href="../resources/Admin/vendor.bundle.base.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <link rel="stylesheet" href="../resources/Admin/fonts/materialdesignicons.min.css">
    </head>
    <body>
        <%@ include file="/template/header.jsp" %>
        <div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Sản phẩm</h6>
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb font-large">
                <a href="home">Trang chủ</a> / <span>Thông tin chi tiết sản phẩm</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<div class="container">
    <div id="content">
        <div class="row">
            <div class="col-sm-9">
                <div class="row">
                    <div class="col-sm-4">
                        <img src="${item.getImage()}" alt="" height="270">
                    </div>
                    <div class="col-sm-8">
                        <div class="single-item-body">
                            <p class="single-item-title" style="font-size:15px;">Tên sản phẩm: ${item.getName_Pr()}</p>
                            <div class="space20">&nbsp;</div>
                            <p class="single-item-price" style="font-size:15px;">
                                Giá: ${item.getPrice()}
                            </p>
                        </div>

                        <div class="clearfix"></div>
                        <div class="space20">&nbsp;</div>

                        <div class="single-item-desc" >
                            <p class="123" style="font-size:15px;">Mô tả: ${item.getDescriptions()}</>
                        </div>
                        <div class="space20">&nbsp;</div>

                        <div class="single-item-options">
                            <a class="add-to-cart" href="/ShoppingCart/Add/@Model.ID_PR" style="width:40px;height:40px"><i class="glyphicon glyphicon-shopping-cart" style="width:40px; height:40px"></i></a>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

                <div class="space40">&nbsp;</div>
                <div class="woocommerce-tabs">
                    <ul class="tabs">
                        <li><a href="#tab-description" style="font-size:15px;">Mô tả</a></li>
                    </ul>

                    <div class="panel" id="tab-description">
                        <p class="123" style="font-size:15px;">${item.getDescriptions()}</p>
                    </div>
                </div>
                <div class="space50">&nbsp;</div>
                <div class="beta-products-list">
                    
                    
                </div> <!-- .beta-products-list -->
                </div>
            <div class="col-sm-3 aside">
                <div class="widget">
                    <h3 class="widget-title">Sản phẩm khuyến mãi</h3>
                    <div class="widget-body">
                        <div class="beta-sales beta-lists">
                            <c:forEach var="hot" items="${listHot}">
                                <div class="media beta-sales-item">
                                    <a class="pull-left" href="Product"><img src="${hot.getImage()}" alt="" width="260" height="250"></a>
                                    <div class="media-body">
                                        <p>${hot.getName_Pr()}</p> 
                                        <span class="beta-sales-price">${hot.getPrice()}</span>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div> <!-- best sellers widget -->
                <div class="widget">
                    <h3 class="widget-title">Sản phẩm mới</h3>
                    <div class="widget-body">
                        <div class="beta-sales beta-lists">
                            <c:forEach var="new" items="${listNew}">
                                <div class="media beta-sales-item">
                                    <a class="pull-left" href="Product"><img src="${new.getImage()}" alt="" width="260" height="250"></a>
                                    <div class="media-body">
                                        <p>${new.getName_Pr()}</p>
                                        <span class="beta-sales-price">${new.getPrice()}</span>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div> <!-- best sellers widget -->
            </div>
        </div>
    </div> <!-- #content -->
</div>
<%@ include file="/template/footer.jsp" %>
    </body>
</html>
