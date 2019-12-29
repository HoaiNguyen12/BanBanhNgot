<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="<c:url value="/resources/sale/css/font-awesome.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/sale/css/example3/colorbox.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/sale/css/settings.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/sale/css/responsive.css"/>">
        <link rel="stylesheet" title="style" href="<c:url value="/resources/sale/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/sale/css/animate.css"/>">
        <link rel="stylesheet" title="style" href="<c:url value="/resources/sale/css/huong-style.css"/>">
    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <jsp:include page="slide.jsp"></jsp:include>
        
        <jsp:include page="content.jsp"></jsp:include>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- include js files -->
        <script src="<c:url value="/resources/sale/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/jquery-ui-1.10.4.custom.min.js"/>"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="<c:url value="/resources/sale/js/jquery.bxslider.min.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/jquery.colorbox-min.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/Animo.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/dug.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/scripts.min.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/jquery.themepunch.tools.min.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/jquery.themepunch.revolution.min.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/waypoints.min.js"/>"></script>
        <script src="<c:url value="/resources/sale/js/wow.min.js"/>"></script>
        <!--customjs-->
        <script src="<c:url value="/resources/sale/js/custom2.js"/>"></script>
        <script>
            $(document).ready(function ($) {
                $(window).scroll(function () {
                    if ($(this).scrollTop() > 150) {
                        $(".header-bottom").addClass('fixNav')
                    } else {
                        $(".header-bottom").removeClass('fixNav')
                    }
                }
                )
            })
        </script>
    </body>
</html>
