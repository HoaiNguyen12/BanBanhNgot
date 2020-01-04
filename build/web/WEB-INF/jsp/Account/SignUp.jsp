<%-- 
    Document   : login
    Created on : Dec 24, 2019, 10:22:54 PM
    Author     : Admin
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Login</title
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="resources/Login/images/icons/favicon.ico" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/Login/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/Login/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/Login/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link href="resources/Login/animate.css" rel="stylesheet" />
        <!--===============================================================================================-->
        <link href="resources/Login/hamburgers.min.css" rel="stylesheet" />
        <!--===============================================================================================-->
        <link href="resources/Login/animsition.min.css" rel="stylesheet" />
        <!--===============================================================================================-->
        <link href="resources/Login/select2.min.css" rel="stylesheet" />
        <!--===============================================================================================-->
        <link href="resources/Login/daterangepicker.css" rel="stylesheet" />
        <!--===============================================================================================-->
        <link href="resources/Login/util.css" rel="stylesheet" />
        <link href="resources/Login/main.css" rel="stylesheet" />
        <!--===============================================================================================-->
    </head>
    <body>
        <div class="container-login100" style="background-image: url('resources/Login/images/bg-01.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30 m-t-100">
                <div class="row">
                    <div class="col-md-12">
                        <form class="login100-form validate-form" action="${pageContext.request.contextPath}/checkSignUp.htm" modelAttribute="User" method="POST">
                            <span class="login100-form-title p-b-37">
                                Đăng ký
                            </span>

                            <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username ">
                                <input class="input100" type="text" name="UserName" placeholder="username ">
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100 validate-input m-b-20" data-validate="Enter email ">
                                <input class="input100" type="text" name="email" placeholder="email ">
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                                <input class="input100" type="password" name="password" placeholder="password">
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                                <input class="input100" type="password" name="re-password" placeholder="re-password">
                                <span class="focus-input100"></span>
                            </div>

                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn">
                                    Đăng ký
                                </button>
                            </div>


                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
