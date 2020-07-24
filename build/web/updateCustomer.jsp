<%-- 
    Document   : updateCustomer
    Created on : Oct 13, 2019, 6:44:33 PM
    Author     : Linh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/style_product.css">
        <link rel="stylesheet" href="CSS/style_footer.css">
    </head>
    <body>
<jsp:include page="header.jsp"></jsp:include>
        <div class="contact-section">
            <div class="border"></div>
            <form action="controllerCustomer" method="get">
                <br>
                <c:choose>
                    <c:when test="${sessionScope.Check == 'Insert'}">
                        <h3 style="text-align: center">Insert Customer:</h3><br>
                        <div class="container">

                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">UserName:</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Username" name="txtUsername">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Password:</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Password" name="txtPassword">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">LastName</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Họ và tên" name="txtLastname">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Email</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Email" name="txtEmail">
                                <div class="input-group-append">
                                    <span class="input-group-text">@example.com</span>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Phone:</span>
                                </div>
                                
                                <input type="text" class="form-control" placeholder="Số điện thoại" name="txtPhonenumber">
                                <div class="input-group-append">
                                    <span class="input-group-text">+84</span>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Address</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Địa chỉ" name="txtAddress">
                            </div>
                            <input type="submit" class="btn btn-dark" name="btaction" value="insert">
                        </div>
                        </c:when>
                        <c:when test="${sessionScope.Check =='Update'}">
                            <h3 style="text-align: center">Update Customer: ${sessionScope.Username}</h3><br>
                            <div class="container">
                            <div class="input-group mb-3">
                                <input type="hidden" class="form-control" placeholder="Username" name="txtUsername" value="${sessionScope.Username}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Password</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Password" name="txtPassword" value="${sessionScope.Password}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">LastName</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Họ và tên" name="txtLastname" value="${sessionScope.Lastname}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Email:</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Email" name="txtEmail" value="${sessionScope.Email}">
                                <div class="input-group-append">
                                    <span class="input-group-text">@example.com</span>
                                </div>
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Phone:</span>
                                </div>
                                
                                <input type="text" class="form-control" placeholder="Số điện thoại" name="txtPhonenumber" value="${sessionScope.Phonenumber}">
                                <div class="input-group-append">
                                    <span class="input-group-text">+84</span>
                                </div>
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">Address:</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Địa chỉ" name="txtAddress" value="${sessionScope.Address}">
                            </div>
                            <input type="submit" class="btn btn-dark" name="btaction" value="update">
                            </div>
                            <br><br>
                        </c:when>
                    </c:choose>
                            
            </form>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>