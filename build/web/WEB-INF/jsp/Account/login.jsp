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
        <section id="loginForm">
            <!-- @using (Html.BeginForm("Login", "Account", new { ReturnUrl = ViewBag.ReturnUrl }, FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
            { -->
            <form class="form-horizontal" action="check.htm" modelAttribute="User" method="POST">
                <!--@Html.AntiForgeryToken()
                <h4>Use a local account to log in.</h4>-->
                <h4>Đăng nhập</h4>
                <hr />
                <!--@Html.ValidationSummary(true, "", new { @class = "text-danger" })-->
                <div class="form-group">
                    <!--@Html.LabelFor(m => m.Email, new { @class = "col-md-2 control-label" })-->
                    <p class="col-md-4 control-label">Email</p>
                    <div class="col-md-12">
                        <input type="text" required name="Email" class="form-control">
                        <!--@Html.TextBoxFor(m => m.Email, new { @class = "form-control" })-->
                        <!--@Html.ValidationMessageFor(m => m.Email, "", new { @class = "text-danger" })-->
                    </div>
                </div>
                <div class="form-group">
                    <!--@Html.LabelFor(m => m.Password, new { @class = "col-md-2 control-label" })-->
                    <p class="col-md-4 control-label">Password</p>
                    <div class="col-md-12">
                        <input type="password" required name="Password" class="form-control">
                        <!--@Html.PasswordFor(m => m.Password, new { @class = "form-control" })
                        @Html.ValidationMessageFor(m => m.Password, "", new { @class = "text-danger" })-->
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <div class="checkbox">
                            <!--
                            @Html.CheckBoxFor(m => m.RememberMe)
                            @Html.LabelFor(m => m.RememberMe)
                            -->
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <input type="submit" value="Đăng nhập" class="btn btn-default" />
                    </div>
                </div>
                <p>
                    <!--@Html.ActionLink("Register as a new user", "Register")-->
                </p>
                <!--@* Enable this once you have account confirmation enabled for password reset functionality
                    <p>
                        @Html.ActionLink("Forgot your password?", "ForgotPassword")
                    </p>*@ -->
            </form>
            <!--} -->
        </section>
    </div>
    <div class="col-md-4">
        <section id="socialLoginForm">
            <!--@Html.Partial("_ExternalLoginsListPartial", new ExternalLoginListViewModel { ReturnUrl = ViewBag.ReturnUrl })
        --></section>
    </div>
</div>
            </div>
    </div>
    </body>
</html>
