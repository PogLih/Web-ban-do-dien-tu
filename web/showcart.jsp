<%-- 
    Document   : newjsp
    Created on : Oct 23, 2019, 8:47:55 PM
    Author     : Linh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Customer"%>
<%@page import="model.Customers"%>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <!--<link rel="stylesheet" href="CSS/style_product.css">-->
        <link rel="stylesheet" href="CSS/style_footer.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand -->
            <a class="navbar-brand" href="#">welcome, ${sessionScope.USER}</a>

            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Index</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="showAllProduct.jsp">Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="showAllCustomer.jsp">Customer</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                                <form class="form-inline" action="/somepage">
                                       <input class="form-control mr-sm-2" type="text" placeholder="Search">
                                       <button class="btn btn-success" type="submit">Search</button>
                                      </form>
                    <form action="controllerCartBean" method="post"><button value="View Cart" name="action" class="btn btn-successx">View Cart</button></form><br>
                                
                    <a href="login.jsp" style="padding-top: 18px" class="nav-link">Logout</a>
                             </ul>

            </div>
        </nav>
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Invoice
                    <strong><%= (new java.util.Date()).toLocaleString()%></strong> 
                    <span class="float-right"> <strong>Status:</strong> Pending</span>

                </div>
                <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-sm-6">
                            <h6 class="mb-3">To:</h6>
                            <div>
                                Name:${sessionScope.User}
                            </div>
                            <%
                                Customers ctms = new Customers();
                                String username = (String) session.getAttribute("USER");
                                List<Customer> list = ctms.showCustomer(username);
                                for (Customer ct : list) {
                                    out.print("<div>" + ct.getLastname() + "</div>"
                                            + "<div>Address:" + ct.getAddress() + "</div>"
                                            + "<div>Email:" + ct.getEmail() + "</div>"
                                            + "<div>Phone:" + ct.getPhonenumber() + "</div>"
                                    );
                                }
                            %>
                        </div>
                    </div>
                    <div class="table-responsive-sm">

                        <c:set var="shop" value="${sessionScope.SHOP}"/>
                        <c:if test="${not empty shop}">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th class="center">No.</th>
                                        <th>Code</th>
                                        <th>Name</th>
                                        <th class="right">Price</th>
                                        <th class="center">Quantity</th>
                                        <th class="right">Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <form action="controllerCartBean">
                                    <c:set var="count" value="0"/>
                                    <c:forEach var="rows" items="${shop}">
                                        <c:set var="count" value="${count + 1}"/>
                                        <tr>

                                            <td class="center">${count}</td>
                                            <td class="left strong">${rows.value.sanpham.code}</td>
                                            <td class="left">${rows.value.sanpham.name}</td>

                                            <td class="right">${rows.value.sanpham.price}</td>
                                            <td class="center">${rows.value.quantity}</td>
                                            <td class="right"><c:set var="a" value="${rows.value.sanpham.price* rows.value.quantity }"/>${rows.value.sanpham.price* rows.value.quantity }</td><c:set var="total" value="${total+a}"/>
                                            <td><button value="Remove" name="action" class="btn btn-success"><input type="hidden" name="rmv" value="${rows.value.sanpham.code}"/>Remove</button></td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <c:url var="add" value="controllerCartBean">
                                            <c:param name="action" value="AddMore"/>
                                        </c:url>
                                        <td colspan="2"><a href="${add}">Add more</a></td>
                                    </tr>
                                </form>
                                </tbody>
                            </table>
                        </c:if>

                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-sm-5">

                        </div>

                        <div class="col-lg-4 col-sm-5 ml-auto">
                            <table class="table table-clear">
                                <tbody>
                                    <tr>
                                        <td class="left">
                                            <strong>Subtotal</strong>
                                        </td>
                                        <td class="right">${total}$</td>
                                    </tr>

                                    <tr>
                                        <td class="left">
                                            <strong>Ship</strong>
                                        </td>
                                        <td class="right">${total*0.1}$</td>
                                    </tr>
                                    <tr>
                                        <td class="left">
                                            <strong>Total</strong>
                                        </td>
                                        <td class="right">
                                            <strong>${total+total*0.1}$</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="left">
                                            <form action="controllerCartBean">
                                                <button name="action" value="Buy" class="btn btn-success" style="width: 100px">Buy</button>
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
<jsp:include page="footer.jsp"></jsp:include>