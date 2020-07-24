<%-- 
    Document   : login
    Created on : Oct 6, 2019, 2:03:37 PM
    Author     : Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
    <link rel="stylesheet" href="CSS/style.css">
    </head>
    <body>
        <form action="controllerCustomer" method="post">
        <div class="login-box">
            <h1>Login</h1>
            <div class="textbox">
                <i class="fas fa-user"></i>
                <input type="text" name="txtUsername" placeholder="Username">
            </div>

            <div class="textbox">
                <i class="fas fa-lock"></i>
                <input type="password" name="txtPassword" placeholder="Password">
            </div>

            <input type="submit" name="btaction" class="btn" value="Sign in">
        </div>
        </form>
    </body>
</html>
