<%-- 
    Document   : cart
    Created on : Dec 31, 2019, 11:01:28 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <script type="text/javascript">
            function Remove(id) {
                $.ajax({
                    url: '${pageContext.request.contextPath}/cart/items/remove.htm',
                    type: 'POST', 
                    dataType: 'JSON',
                    data : { id: id },
                    complete: function(response) {
                            $('#' + id).remove();
                            var a = $('#TongTien').text();
                            var tt = parseFloat(a);
                            $('#TongTien').text(tt - parseFloat($('#tt_' + id).text()));
                            
                    }
                });
            }
        </script>
    </head>
    <body>
        <%@ include file="/template/header.jsp" %>
        <div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Giỏ hàng</h6>
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb font-large">
                <a href="Index">Trang chủ</a> / <span>Giỏ hàng</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="container">
    <div id="content">

        <div class="table-responsive">
            <!-- Shop Products Table -->
            <table class="shop_table beta-shopping-cart-table" cellspacing="0">
                <thead>
                    <tr>
                        <th class="product-name">Sản phẩm</th>
                        <th >Hình ảnh</th>
                        <th class="product-price">Giá</th>
                        <th class="product-quantity">Số lượng</th>
                        <th class="product-price">Thành tiền</th>
                        <th class="product-update">Sửa số lượng</th>
                        <th class="product-remove">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    
                     <c:forEach var="item" items="${sessionScope.cart}">
                        <tr class="cart_item" id="${item.getProduct().getId_Pr()}">
                            <td class="product-name">
                                <div class="media">
                                    <div class="media-body">
                                        <p class="font-large table-title">${item.getProduct().getName_Pr()}</p>
                                    </div>
                                </div>
                            </td>
                            <td class="">
                               <img src="${pageContext.request.contextPath}/${item.getProduct().getImage()}"  width="80" height="60"/>
                            </td>
                            <td class="product-price">
                                <span class="amount">${item.getProduct().getPrice()}</span>
                            </td>
                            
                
                                <td class="product-quantity">
                                    <input type="number" value="${item.getQuantity()}" id="pro_${item.getQuantity()}"/>
                                </td>
                                <td class="product-price">
                                    <span id="tt_${item.getProduct().getId_Pr()}" class="amount">${item.getProduct().getPrice() * item.getQuantity()}</span>
                                </td>
                                <td>
                                    <input type="submit" value="Cập nhật" style="width:100px; height:30px" />
                                </td>
                
                                
                            <td class="product-remove">
                                <a onClick="Remove(${item.getProduct().getId_Pr()});" class="remove" title="Remove this item"><i class="glyphicon glyphicon-remove"></i></a>
                            </td>
                        </tr>
            </c:forEach>

                    </tbody>
            </table>
            <!-- End of Shop Table Products -->
        </div>
        <!-- Cart Collaterals -->
       
        <div class="cart-totals pull-left" style="width:300px;height:50px;"><p clas="123" style="margin-top:15px; font-size:16px;">Tổng đơn hàng: <p id="tongtien">${TongTien}</p></div>
             <a href="/ShoppingCart/Payment" class="beta-btn primary text-center" style="margin-top:35px; margin-left:200px">Đặt hàng <i class="glyphicon glyphicon-chevron-right"></i></a>
           
                <!-- End of Cart Collaterals -->
            <div class="clearfix"></div>
        
    </div> <!-- #content -->
</div>
        <%@ include file="/template/footer.jsp" %>
        
    </body>
</html>
