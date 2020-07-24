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
<!-- saved from url=(0050)https://getbootstrap.com/docs/4.1/examples/album/# -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--        <link rel="icon" href="https://getbootstrap.com/docs/4.1/assets/img/favicons/favicon.ico">-->
        <title>Index</title>
        <!--        <link rel="canonical" href="https://getbootstrap.com/docs/4.1/examples/album/">-->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- Custom styles for this template -->
        <!--        <link href="./Album example for Bootstrap_files/album.css" rel="stylesheet">-->
    </head>
    <body>
        <header>
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
                        <form class="form-inline" action="controllerCartBean" method="post">
                                           <input class="form-control mr-sm-2" type="text" placeholder="Search">
                                           <button class="btn btn-success" type="submit">Search</button>|
                            <button value="View Cart" name="action" class="btn btn-success">View Cart</button></form>
                                    
                        <a href="login.jsp" class="nav-link">Logout</a>
                                 </ul>

                </div>
            </nav>
        </header>

        <main role="main" style="min-height: 800px;">
            <div class="album py-5 bg-light">
                <div class="container">

                    <div class="row">
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
                                    String admin = "";
                                    if (ctm.isIsadmin() == true) {
                                        admin = "Admin";
                                    } else {
                                        admin = "Guess";
                                    }
                                    out.print("<form action='controllerCustomer' method='get'>");
                                    out.print("<tr>"
                                            + "<td>" + ctm.getUsername() + "</td>"
                                            + "<td>" + ctm.getPassword() + "</td>"
                                            + "<td>" + ctm.getLastname() + "</td>"
                                            + "<td>" + ctm.getEmail() + "</td>"
                                            + "<td>" + ctm.getPhonenumber() + "</td>"
                                            + "<td>" + ctm.getAddress() + "</td>"
                                            + "<td>" + admin + "</td>"
                                            + "<td>" + "<input type='submit' class=\"btn btn-success\" name='btaction' value='Update'>" + "</td>"
                                            + "<td>" + "<input type='submit' class=\"btn btn-success\" name='btaction' value='Delete'>" + "</td>"
                                            + "<input type='hidden' name='txtUsername' value='" + ctm.getUsername() + "'>"
                                            + "<input type='hidden' name='txtPassword' value='" + ctm.getPassword() + "'>"
                                            + "<input type='hidden' name='txtLastname' value='" + ctm.getLastname() + "'>"
                                            + "<input type='hidden' name='txtEmail' value='" + ctm.getEmail() + "'>"
                                            + "<input type='hidden' name='txtPhonenumber' value='" + ctm.getPhonenumber() + "'>"
                                            + "<input type='hidden' name='txtAddress' value='" + ctm.getAddress() + "'>"
                                            + "</tr>");
                                    out.print("</form>");
                                }
                            %>
                        </table>
                    </div>
                </div>
            </div>

        </main>

        <footer class="text-muted" >
            <div class="container">
                <p class="float-right">
                    <a href="https://getbootstrap.com/docs/4.1/examples/album/#">Back to top</a>
                </p>
                <p>Album example is © Bootstrap, but please download and customize it for yourself!</p>
                <p>New to Bootstrap? <a href="https://getbootstrap.com/docs/4.1/">Visit the homepage</a> or read our <a href="https://getbootstrap.com/docs/4.1/getting-started/">getting started guide</a>.</p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="./Album example for Bootstrap_files/jquery-3.3.1.slim.min.js.download" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="./Album example for Bootstrap_files/popper.min.js.download"></script>
        <script src="./Album example for Bootstrap_files/bootstrap.min.js.download"></script>
        <script src="./Album example for Bootstrap_files/holder.min.js.download"></script>


        <svg xmlns="http://www.w3.org/2000/svg" width="348" height="225" viewBox="0 0 348 225" preserveAspectRatio="none" style="display: none; visibility: hidden; position: absolute; top: -100%; left: -100%;"><defs><style type="text/css"></style></defs><text x="0" y="17" style="font-weight:bold;font-size:17pt;font-family:Arial, Helvetica, Open Sans, sans-serif">Thumbnail</text></svg></body></html>

