<%-- 
    Document   : products
    Created on : Dec 30, 2019, 10:47:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết</title>
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
    </head>
    <body>
        <%@ include file="/template/header.jsp" %>
        <div class="inner-header">
    <div class="container">
        <div class="pull-left">
                <h6 class="inner-title">Sản phẩm ${li.getName_Type()}</h6>
             
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb font-large">
                <a href="index.html">Trang chủ</a> / <span>Sản phẩm</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="container">
    <div id="content" class="space-top-none">
        <div class="main-content">
            <div class="space60">&nbsp;</div>
            <div class="row">
                <div class="col-sm-3">
                    <ul class="aside-menu">
                        <c:forEach var="li" items="${lType}">
                            <li><a href="${pageContext.request.contextPath}/products/${li.getId_Type()}.htm">${li.getName_Type()}</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="col-sm-9">
                    <div class="beta-products-list">
                        
                        <div class="beta-products-details">
                            <div class="clearfix"></div>
                        </div>
                        <div class="row">
                             <c:forEach var="item" items="${list}">
                                <div class="col-sm-4">
                                    <div class="single-item">
                                        <div class="single-item-header">
                                            <a href="Product"><img src="${pageContext.request.contextPath}/${item.getImage()}" alt="" width="260" height="250"></a>
                                        </div>
                                        <div class="single-item-body">
                                            <p class="single-item-title">${item.getName_Pr()}</p>
                                            <p class="single-item-price">
                                                <span>${item.getPrice()}</span>
                                            </p>
                                        </div>
                                        <div class="single-item-caption">
                                            <a class="add-to-cart pull-left" onClick="addToCart(${item.getId_Pr()})"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                                            <a class="beta-btn primary" href="${pageContext.request.contextPath}/detail/${item.getId_Pr()}">Xem chi tiết <i class="glyphicon glyphicon-chevron-right"></i></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                             </c:forEach>
                        </div>
                        <div class="row">
                            <div class="pagination">
                                @Html.PagedListPager(Model, page => Url.Action("Type_Product", new { page = page }))
                            </div>
                        </div>
                    </div> <!-- .beta-products-list -->

                    <div class="space50">&nbsp;</div>

                </div>
            </div>

                <!-- end section with sidebar and main content -->


            </div> <!-- .main-content -->
    </div> <!-- #content -->
</div>
        <%@ include file="/template/footer.jsp" %>
        <script type="text/javascript">
            function addToCart(id)
            {
                $.ajax ({ 
                        url: '${pageContext.request.contextPath}/buy.htm', 
                        type: 'POST', 
                        dataType: 'JSON',
                        data : { id: id },
                        complete: function(status){
                            console.log("OK");
                            Swal.fire({
                                text: "Đã thêm vào giỏ hàng",
                                type: "success",
                                timer: 1000,
                                showCancelButton: false,
                                showConfirmButton: false
                            });
                            var i = parseInt($("#total").text());	
                            i = i + 1;
                            $("#total").text(i);
                            
                        }
                }); 
            }
            
            
        </script>
    </body>
</html>
