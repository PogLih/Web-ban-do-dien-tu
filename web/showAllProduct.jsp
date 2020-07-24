<%-- 
    Document   : showAllProduct
    Created on : Oct 6, 2019, 2:13:08 PM
    Author     : Linh
--%>

<%@page import="model.Products"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
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
<h1 style="text-align: center;padding-top: 20px">Product</h1>

<form action="controllerProduct" method="get"><button value="Insert" name="action" style="position: absolute;left: 40%;width: 20%;" class="btn btn-dark">Insert</button></form><br><br>
<h1 style="text-align: center;padding-top: 20px">Smart Phone</h1
<%
    Products dsSanpham = new Products();
    List<Product> list = dsSanpham.showProductbycategory("SM");
    for (Product sp : list) {
        out.print("<form action='controllerProduct' method='get'>");
        out.print("<div class=\"card\">");
        out.print("<div class=\"top-section\">");
        out.print("<img id=\"image-container\" src='" + sp.getImg() + "' alt=\"\">");
        out.print("<div class=\"price\">" + sp.getPrice()+"$" + "</div></div>");
        out.print("<div class=\"product-info\">");
        out.print("<div class=\"name\">" + sp.getName() + "</div>");
        out.print("<div></div>");
        out.print("<div class=\"dis\">" + sp.getCategory() + "</div>");
        out.print("<input type='submit' class=\"btn btn-dark\" name='action' value='Update'>" + "<input type='submit' class=\"btn btn-dark\" name='action' value='Delete'>");
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
<h1 style="text-align: center;padding-top: 20px">Laptop</h1
<%
    Products dsSanpham1 = new Products();
    List<Product> list1 = dsSanpham1.showProductbycategory("LT");
    for (Product sp : list1) {
        out.print("<form action='controllerProduct' method='get'>");
        out.print("<div class=\"card\">");
        out.print("<div class=\"top-section\">");
        out.print("<img id=\"image-container\" src='" + sp.getImg() + "' alt=\"\">");
        out.print("<div class=\"price\">" + sp.getPrice()+"$" + "</div></div>");
        out.print("<div class=\"product-info\">");
        out.print("<div class=\"name\">" + sp.getName() + "</div>");
        out.print("<div></div>");
        out.print("<div class=\"dis\">" + sp.getCategory() + "</div>");
        out.print("<input type='submit' class=\"btn btn-dark\" name='action' value='Update'>" + "<input type='submit' class=\"btn btn-dark\" name='action' value='Delete'>");
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
<h1 style="text-align: center;padding-top: 20px">Personal Computer</h1
<%
    Products dsSanpham2 = new Products();
    List<Product> list2 = dsSanpham2.showProductbycategory("PC");
    for (Product sp : list2) {
        out.print("<form action='controllerProduct' method='get'>");
        out.print("<div class=\"card\">");
        out.print("<div class=\"top-section\">");
        out.print("<img id=\"image-container\" src='" + sp.getImg() + "' alt=\"\">");
        out.print("<div class=\"price\">" + sp.getPrice()+"$" + "</div></div>");
        out.print("<div class=\"product-info\">");
        out.print("<div class=\"name\">" + sp.getName() + "</div>");
        out.print("<div></div>");
        out.print("<div class=\"dis\">" + sp.getCategory() + "</div>");
        out.print("<input type='submit' class=\"btn btn-dark\" name='action' value='Update'>" + "<input type='submit' class=\"btn btn-dark\" name='action' value='Delete'>");
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
