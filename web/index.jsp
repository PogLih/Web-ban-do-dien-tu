<%-- 
    Document   : index
    Created on : Oct 6, 2019, 2:43:12 PM
    Author     : Linh
--%>

<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/style_product.css">
        <link rel="stylesheet" href="CSS/style_footer.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="demo" style="width: 70%;position: relative;left: 15%;padding-top: 20px" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="img/slide1.png" alt="Los Angeles" width="100%" height="500">
    </div>
    <div class="carousel-item">
        <img src="img/slide2.jpg" alt="Chicago" width="100%" height="500">
    </div>
    <div class="carousel-item">
        <img src="img/slide3.png" alt="New York" width="100%" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<h1 style="text-align: center;padding-top: 20px">Smart Phone</h1>
 <%
    Products dsSanpham = new Products();
    List<Product> list = dsSanpham.showProductbycategory("SM");
    for (Product sp : list) {
        out.print("<form action='controllerCartBean' method='post'>");
        out.print("<div class=\"card\">");
        out.print("<div class=\"top-section\">");
        out.print("<img id=\"image-container\" src='" + sp.getImg() + "' alt=\"\">");
        out.print("<div class=\"price\">" + sp.getPrice()+"$" + "</div></div>");
        out.print("<div class=\"product-info\">");
        out.print("<div class=\"name\">" + sp.getName() + "</div>");
        out.print("<div class=\"dis\">" + sp.getPrice() + "$</div>");
        out.print("<input type='submit' class=\"btn btn-dark\" name='action' value='Add to Cart'>");
        out.print("</div></div>");
        out.print("<input type='hidden' name='txtCode' value='" + sp.getCode() + "'>"
                + "<input type='hidden' name='txtName' value='" + sp.getName() + "'>"
                + "<input type='hidden' name='txtPrice' value='" + sp.getPrice() + "'>"
                + "<input type='hidden' name='txtCategory' value='" + sp.getCategory() + "'>"
                + "<input type='hidden' name='txtImg' value='" + sp.getImg() + "'>"
        );
        out.print("</form>");
    }
%>
<h1 style="text-align: center;padding-top: 20px">Laptop</h1>
 <%
    Products dsSanpham2 = new Products();
    List<Product> list2 = dsSanpham2.showProductbycategory("LT");
    for (Product sp : list2) {
        out.print("<form action='controllerCartBean' method='get'>");
        out.print("<div class=\"card\">");
        out.print("<div class=\"top-section\">");
        out.print("<img id=\"image-container\" src='" + sp.getImg() + "' alt=\"\">");
        out.print("<div class=\"price\">" + sp.getPrice()+"$" + "</div></div>");
        out.print("<div class=\"product-info\">");
        out.print("<div class=\"name\">" + sp.getName() + "</div>");
        out.print("<div class=\"dis\">" + sp.getPrice() + "$</div>");
        out.print("<input type='submit' class=\"btn btn-dark\" name='action' value='Add to Cart'>");
        out.print("</div></div>");
        out.print("<input type='hidden' name='txtCode' value='" + sp.getCode() + "'>"
                + "<input type='hidden' name='txtName' value='" + sp.getName() + "'>"
                + "<input type='hidden' name='txtPrice' value='" + sp.getPrice() + "'>"
                + "<input type='hidden' name='txtCategory' value='" + sp.getCategory() + "'>"
                + "<input type='hidden' name='txtImg' value='" + sp.getImg() + "'>"
        );
        out.print("</form>");
    }
%>

<h1 style="text-align: center;padding-top: 20px">Personal Computer</h1>
 <%
    Products dsSanpham3 = new Products();
    List<Product> list3 = dsSanpham3.showProductbycategory("PC");
    for (Product sp : list3) {
        out.print("<form action='controllerCartBean' method='get'>");
        out.print("<div class=\"card\">");
        out.print("<div class=\"top-section\">");
        out.print("<img id=\"image-container\" src='" + sp.getImg() + "' alt=\"\">");
        out.print("<div class=\"price\">" + sp.getPrice()+"$" + "</div></div>");
        out.print("<div class=\"product-info\">");
        out.print("<div class=\"name\">" + sp.getName() + "</div>");
        out.print("<div class=\"dis\">" + sp.getPrice() + "$</div>");
        out.print("<input type='submit' class=\"btn btn-dark\" name='action' value='Add to Cart'>");
        out.print("</div></div>");
        out.print("<input type='hidden' name='txtCode' value='" + sp.getCode() + "'>"
                + "<input type='hidden' name='txtName' value='" + sp.getName() + "'>"
                + "<input type='hidden' name='txtPrice' value='" + sp.getPrice() + "'>"
                + "<input type='hidden' name='txtCategory' value='" + sp.getCategory() + "'>"
                + "<input type='hidden' name='txtImg' value='" + sp.getImg() + "'>"
        );
        out.print("</form>");
    }
%>
<button></button>
<jsp:include page="footer.jsp"></jsp:include>
