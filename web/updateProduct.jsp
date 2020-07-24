<%-- 
    Document   : updateProduct
    Created on : Oct 13, 2019, 3:07:52 PM
    Author     : Linh
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
    <div class="border"></div>
    <form action="controllerProduct" method="get">
    <c:choose>
        <c:when test = "${sessionScope.Check =='Insert'}">
            <h1 style="text-align: center">Insert Product:</h1><br>
            <div class="container">
                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Code:</span>
                                </div>
                    <input type="text" class="form-control" placeholder="Mã sản phẩm" name="txtCode">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Name:</span>
                                </div>
                    <input type="text" class="form-control" placeholder="Tên sản phẩm" name="txtName">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Price:</span>
                                </div>
                    <input type="text" class="form-control" placeholder="Giá tiền" name="txtPrice">
                    <div class="input-group-append">
                        <span class="input-group-text">US Dollar</span>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Category</span>
                                </div>
                    <input type="text" class="form-control" placeholder="Mã loại" name="txtCategory">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Image:</span>
                                </div>
                    <input type="text" class="form-control" name="txtImg" value="img/" >
                    <div class="input-group-append">
                        <span class="input-group-text">.jpg</span>
                    </div>
                </div>
                <input type="submit" name="action" value="insert" class="btn btn-dark">
            </div>
        </c:when>
        <c:when test = "${sessionScope.Check == 'Update'}">
            <br>
            <h1 style="text-align: center">Update Product:${sessionScope.Code}</h1>
            <div class="container">
                <div class="input-group mb-3">
                    <input type="hidden" class="form-control" name="txtCode" value="${sessionScope.Code}">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Name:</span>
                                </div>
                    <input type="text" class="form-control" name="txtName" value="${sessionScope.Name}">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Price:</span>
                                </div>
                    <input type="text" class="form-control" name="txtPrice" value="${sessionScope.Price}">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Category:</span>
                                </div>
                    <input type="text" class="form-control" name="txtCategory" value="${sessionScope.Category}">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-append">
                                    <span class="input-group-text">Image:</span>
                                </div>
                    <input type="text" class="form-control" name="txtImg" value="${sessionScope.Img}">
                </div>
                <input type="submit" name="action" value="update" class="btn btn-dark">
            </div>
        </c:when>
    </c:choose>
    </form><br><br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>