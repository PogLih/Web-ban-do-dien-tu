<%-- 
    Document   : showAllCustomer
    Created on : Oct 13, 2019, 4:02:05 PM
    Author     : Linh
--%>

<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@page import="model.Customers"%>
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
    <body>>
<jsp:include page="header.jsp"></jsp:include>
<h1 style="text-align: center;padding-top: 20px">Customer</h1>
        <table class="table">
               <thead class="thead-dark">
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Last name</th>
                <th>email</th>
                <th>phone number</th>
                <th>address</th>
                <th>Position</th>
                <th colspan="2"><form action="controllerCustomer" method="get"><input type="submit" class="btn btn-success" value="Insert" name="btaction"></form></th>
            </tr>
            </thead>
            <%
                Customers dskhachhang = new Customers();
                List<Customer> list = dskhachhang.showCustomer("");
                for (Customer ctm : list) {
                    String admin="";
                    if(ctm.isIsadmin()==true){ admin="Admin";} else {admin="Guess";}
                    out.print("<form action='controllerCustomer' method='get'>");
                    out.print("<tr>"
                            + "<td>" + ctm.getUsername() + "</td>"
                            + "<td>" + ctm.getPassword() + "</td>"
                            + "<td>" + ctm.getLastname() + "</td>"
                            + "<td>" + ctm.getEmail() + "</td>"
                            + "<td>" + ctm.getPhonenumber() + "</td>"
                            + "<td>" + ctm.getAddress() + "</td>"
                            + "<td>" +admin+ "</td>"
                            + "<td>" + "<input type='submit' class=\"btn btn-success\" name='btaction' value='Update'>" + "</td>"
                            + "<td>" + "<input type='submit' class=\"btn btn-success\" name='btaction' value='Delete'>" + "</td>"
                            + "<input type='hidden' name='txtUsername' value='" + ctm.getUsername()+ "'>"
                            + "<input type='hidden' name='txtPassword' value='" + ctm.getPassword()+ "'>"
                            + "<input type='hidden' name='txtLastname' value='" + ctm.getLastname()+ "'>"
                            + "<input type='hidden' name='txtEmail' value='" + ctm.getEmail()+ "'>"
                            + "<input type='hidden' name='txtPhonenumber' value='" + ctm.getPhonenumber()+ "'>"
                            + "<input type='hidden' name='txtAddress' value='" + ctm.getAddress()+ "'>"
                            + "</tr>");
                    out.print("</form>");
                }
            %>
        </table>
        <hr><br>
            <jsp:include page="footer.jsp"></jsp:include>