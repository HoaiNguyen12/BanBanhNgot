<%-- 
    Document   : index
    Created on : Dec 30, 2019, 10:51:18 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bakery </title>
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/Home/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/Home/colorbox.css">
         <link rel="stylesheet" href="resources/css1/settings.css">
         <link rel="stylesheet" href="resources/css1/responsive.css">
        <link rel="stylesheet" title="style" href="resources/Home/css/style.css">
        <link rel="stylesheet" href="resources/Home/css/animate.css">
        <link rel="stylesheet" title="style" href="resources/Home/css/huong-style.css">
        <link href="resources/PagedList.css" rel="stylesheet" />
    </head>
    <body>
        <%@ include file="/template/header.jsp" %>
        <div class="container">
    <div id="content" class="space-top-none">
        <div class="main-content">
            <div class="space60">&nbsp;</div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="beta-products-list">
                        <h4>Sản phẩm mới</h4>
                        <div class="beta-products-details">
                            <div class="clearfix"></div>
                        </div>

                        <!--<div class="row">
                            @foreach (var item in Model)
                            {
                                <div class="col-sm-3">
                                    <div class="single-item">
                                        <div class="single-item-header">
                                            <a href="#"><img src="@Url.Content("resources/ImageProduct/"+item.IMAGE)" alt="" width="260" height="250"></a>
                                        </div>
                                        <div class="single-item-body">
                                            <p class="single-item-title">@item.NAME_PR</p>
                                            <p class="single-item-price">
                                                <span class="flash-del">@item.PRICE_OLD</span>
                                                <span class="flash-sale">@item.PRICE</span>
                                            </p>
                                        </div>
                                        <div class="single-item-caption">
                                            <a class="add-to-cart pull-left" href="/ShoppingCart/Add/@item.ID_PR"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                                            <a class="beta-btn primary" href="@Url.Action("Detail","Product_Detail",new {id = @item.ID_PR })">Xem chi tiết  <i class="glyphicon glyphicon-chevron-right"></i></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            }
                        </div>-->
                        <div class="row">
                            <div class="pagination">
                                <!--@Html.PagedListPager(Model, page => Url.Action("Index", new { page = page }))-->
                            </div>
                        </div>
                    </div> <!-- .beta-products-list -->
                    <div class="space50">&nbsp;</div>

                    <div class="beta-products-list">
                        <h4>Sản phẩm khuyến mãi</h4>
                        <div class="beta-products-details">
                            <div class="clearfix"></div>
                        </div>
                        <div class="row">
                            @foreach (var item in list)
                            {
                                <div class="col-sm-3">
                                    <div class="single-item">
                                        <div class="single-item-header">
                                            <a href="#"><img src="@Url.Content("resources/ImageProduct/"+item.IMAGE)" alt="" width="260" height="250"></a>
                                        </div>
                                        <div class="single-item-body">
                                            <p class="single-item-title">@item.NAME_PR</p>
                                            <p class="single-item-price">
                                                <span class="flash-del">@item.PRICE_OLD</span>
                                                <span class="flash-sale">@item.PRICE</span>
                                            </p>
                                        </div>
                                        <div class="single-item-caption">
                                            <a class="add-to-cart pull-left" href="/ShoppingCart/Add/@item.ID_PR"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                                            <a class="beta-btn primary" href="@Url.Action("Detail","Product_Detail",new {id = @item.ID_PR })">Xem chi tiết <i class="glyphicon glyphicon-chevron-right"></i></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            }
                        </div>
                        <div class="row">
                            <div class="pagination">
                                @Html.PagedListPager(Model, page => Url.Action("Index", new { page = page }))
                            </div>
                        </div>
                        <div class="space40">&nbsp;</div>
                    </div> <!-- .beta-products-list -->
                </div>
            </div> <!-- end section with sidebar and main content -->
        </div> <!-- .main-content -->
    </div> <!-- #content -->
</div>
        <jsp:include page="/template/footer.jsp"></jsp:include>
    </body>
</html>
