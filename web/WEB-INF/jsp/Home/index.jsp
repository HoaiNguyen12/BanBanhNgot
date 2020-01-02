<%-- 
    Document   : index
    Created on : Dec 30, 2019, 10:51:18 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/Home/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/Home/colorbox.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css1/settings.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css1/responsive.css">
        <link rel="stylesheet" title="style" href="${pageContext.request.contextPath}/resources/Home/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/Home/css/animate.css">
        <link rel="stylesheet" title="style" href="${pageContext.request.contextPath}/resources/Home/css/huong-style.css">
        <link href="${pageContext.request.contextPath}/resources/PagedList.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
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

                        <div class="row">
                         <c:forEach var="item" items="${list}">
                            
                                <div class="col-sm-3">
                                    <div class="single-item">
                                        <div class="single-item-header">
                                            <a href="#"><img src="${pageContext.request.contextPath}/${item.getImage()}" alt="" width="260" height="250"></a>
                                        </div>
                                        <div class="single-item-body">
                                            <p class="single-item-title">${item.getName_Pr()}</p>
                                            <p class="single-item-price">
                                                <span class="flash-del">${item.getPrice_Old()}</span>
                                                <span class="flash-sale">${item.getPrice()}</span>
                                            </p>
                                        </div>
                                        <div class="single-item-caption">
                                            <a class="add-to-cart pull-left" onClick="addToCart(${item.getId_Pr()});"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                                            <a class="beta-btn primary" href="${pageContext.request.contextPath}/detail/${item.getId_Pr()}.htm">Xem chi tiết  <i class="glyphicon glyphicon-chevron-right"></i></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                        </c:forEach>
                            
                        </div>
                        <div class="row">
                            <div class="pagination">
                                @Html.PagedListPager(Model, page => Url.Action("Index", new { page = page }))
                            </div>
                        </div>
                    </div> <!-- .beta-products-list -->
                    <div class="space50">&nbsp;</div>

                    <div class="beta-products-list">
                        <h4>Sản phẩm được đề suất</h4>
                        <div class="beta-products-details">
                            <div class="clearfix"></div>
                        </div>
                        <div class="row">
                            <c:forEach var="hot" items="${listHot}">
                                <div class="col-sm-3">
                                    <div class="single-item">
                                        <div class="single-item-header">
                                            <a href="#"><img src="${pageContext.request.contextPath}/${hot.getImage()}" alt="" width="260" height="250"></a>
                                        </div>
                                        <div class="single-item-body">
                                            <p class="single-item-title">${hot.getName_Pr()}</p>
                                            <p class="single-item-price">
                                                <span class="flash-del">${hot.getPrice_Old()}</span>
                                                <span class="flash-sale">${hot.getPrice()}</span>
                                            </p>
                                        </div>
                                        <div class="single-item-caption">
                                            <a class="add-to-cart pull-left" onClick="addToCart(${item.getId_Pr()});"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                                            <a class="beta-btn primary" href="${hot.getImage()}">Xem chi tiết <i class="glyphicon glyphicon-chevron-right"></i></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
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
        <script type="text/javascript">
            function addToCart(id)
            {
                $.ajax ({ 
                        url: '${pageContext.request.contextPath}/buy.htm', 
                        type: 'GET', 
                        dataType: 'JSON',
                        data : { id: id },
                        complete: function(status){
                            console.log("OK");
                            updateCartItemCount();		
                        }
                }); 
            }
            
            function updateCartItemCount()
            {
                    $.ajax ({ 
                            url: '/cart/items/count', 
                            type: "GET", 
                            dataType: "json",
                            contentType: "application/json",
                            complete: function(responseData){ 
                                    $('#total').text('('+responseData.responseJSON.count+')');
                            }
                    });
            }
        </script>
    </body>
</html>
