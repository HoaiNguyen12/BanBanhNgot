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
    </head>
    <body>
        <%@ include file="/template/header.jsp" %>


        <div class="inner-header">
            <div class="container">
                <div class="pull-left">
                    <h6 class="inner-title">Đặt hàng</h6>
                </div>
                <div class="pull-right">
                    <div class="beta-breadcrumb">
                        <a href="Index">Trang chủ</a> / <span>Đặt hàng</span>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="container">
            <div id="content">
                <form action="#" method="post" class="beta-form-checkout">
                    <div class="row alert alert-success">Đặt hàng thành công</div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="space20">&nbsp;</div>

                            <div class="form-block">
                                <label for="name">Họ tên*</label>
                                <input type="text" id="name" name="name" placeholder="Họ tên" required>
                            </div>
                            <div class="form-block">
                                <label for="email">Email*</label>
                                <input type="email" id="email" name="email" required placeholder="expample@gmail.com">
                            </div>

                            <div class="form-block">
                                <label for="adress">Địa chỉ*</label>
                                <input type="text" id="adress" name="address" placeholder="Street Address" required>
                            </div>


                            <div class="form-block">
                                <label for="phone">Điện thoại*</label>
                                <input type="text" id="phone" name="sdt" required>
                            </div>

                            <div class="form-block">
                                <label for="notes">Ghi chú</label>
                                <textarea id="notes" name="note"></textarea>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="your-order">
                                <div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
                                <div class="your-order-body" style="padding: 0px 10px">
                                    <div class="your-order-item">
                                        <div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="your-order-item">
                                        <div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
                                        <div class="pull-right"><h5 class="color-black">0 đồng</h5></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="your-order-head"><h5>Hình thức thanh toán</h5></div>

                                <div class="your-order-body">
                                    <ul class="payment_methods methods">
                                        <li class="payment_method_bacs">
                                            <input id="payment_method_bacs" type="radio" class="input-radio" name="pay" value="COD" checked="checked" data-order_button_text="">
                                            <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
                                            <div class="payment_box payment_method_bacs" style="display: block;">
                                                Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho nhân viên giao hàng
                                            </div>
                                        </li>
                                        <li class="payment_method_cheque">
                                            <input id="payment_method_cheque" type="radio" class="input-radio" name="pay" value="ATM" data-order_button_text="">
                                            <label for="payment_method_cheque">Chuyển khoản </label>
                                            <div class="payment_box payment_method_cheque" style="display: none;">
                                                Chuyển tiền đến tài khoản sau:
                                                <br>- Số tài khoản: 123 456 789
                                                <br>- Chủ TK: Nguyễn Hồng Hà
                                                <br>- Ngân hàng ACB, Chi nhánh Hà Nội
                                            </div>
                                        </li>

                                    </ul>
                                </div>

                                <div class="text-center"><button type="submit" class="beta-btn bg-primary">Đặt hàng</button></div>
                            </div> <!-- .your-order -->
                        </div>
                    </div>
                </form>
            </div> <!-- #content -->
        </div> <!-- .container -->

        <%@ include file="/template/footer.jsp" %>
    </body>
</html>
