<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
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
            <!--            <div class="collapse bg-dark" id="navbarHeader">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-8 col-md-7 py-4">
                                        <h4 class="text-white">About</h4>
                                        <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
                                    </div>
                                    <div class="col-sm-4 offset-md-1 py-4">
                                        <h4 class="text-white">Contact</h4>
                                        <ul class="list-unstyled">
                                            <li><a href="https://getbootstrap.com/docs/4.1/examples/album/#" class="text-white">Follow on Twitter</a></li>
                                            <li><a href="https://getbootstrap.com/docs/4.1/examples/album/#" class="text-white">Like on Facebook</a></li>
                                            <li><a href="https://getbootstrap.com/docs/4.1/examples/album/#" class="text-white">Email me</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>-->
            <!--            <div class="navbar navbar-dark bg-dark shadow-sm">
                            <div class="container d-flex justify-content-between">
                                <a href="https://getbootstrap.com/docs/4.1/examples/album/#" class="navbar-brand d-flex align-items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
                                    <strong>Album</strong>
                                </a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                            </div>
                        </div>-->
        </header>

        <main role="main">
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
            <!--            <section class="jumbotron text-center">
                            <div class="container">
                                <h1 class="jumbotron-heading">Album example</h1>
                                <p class="lead text-muted">Something short and leading about the collection below?its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
                                <p>
                                    <a href="https://getbootstrap.com/docs/4.1/examples/album/#" class="btn btn-primary my-2">Main call to action</a>
                                    <a href="https://getbootstrap.com/docs/4.1/examples/album/#" class="btn btn-secondary my-2">Secondary action</a>
                                </p>
                            </div>
                        </section>-->

            <div class="album py-5 bg-light">
                <div class="container">

                    <div class="row">
                        <%
                            Products dsSanpham = new Products();
                            List<Product> list = dsSanpham.showProduct("");
                            for (Product sp : list) {
                                out.print("<div class=\"col-md-4\">");
                                out.print("<div class=\"card mb-4 shadow-sm\">");
                                out.print("<form action='controllerCartBean' method='post'>");
                                out.print("<img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" style=\"height: 225px; width: 100%; display: block;\" src=\"" + sp.getImg() + "\" data-holder-rendered=\"true\">");
                                out.print("<div class=\"card-body\">");
                                out.print("<p style=\"text-align: center\" class=\"card-text\">"
                                        + sp.getPrice() + "<br>"
                                        + sp.getName() + "<br>"
                                        + sp.getCode()
                                        + "</p>");
                                out.print("<div class=\"d-flex justify-content-between align-items-center\">");
                                out.print("<div class=\"btn-group\">");
//                                out.print("<button type=\"button\" name='action' value='Add to Cart' class=\"btn btn-sm btn-outline-secondary\">Add to Cart</button>");
//                                out.print("<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>");
                                out.print("<input type='submit' class=\"btn btn-sm btn-outline-secondary\" name='action' value='Add to Cart'>");
                                out.print("</div>");
                                out.print("<small class=\"text-muted\">" + sp.getCategory() + "</small>");
                                out.print("<input type='hidden' name='txtCode' value='" + sp.getCode() + "'>"
                + "<input type='hidden' name='txtName' value='" + sp.getName() + "'>"
                + "<input type='hidden' name='txtPrice' value='" + sp.getPrice() + "'>"
                + "<input type='hidden' name='txtCategory' value='" + sp.getCategory() + "'>"
                + "<input type='hidden' name='txtImg' value='" + sp.getImg() + "'>");
                                out.print("</form>");
                                out.print("</div>");
                                out.print("</div>");
                                out.print("</div>");
                                out.print("</div>");

                            }
                        %>
                        <!--                        <div class="col-md-4">
                                                    <div class="card mb-4 shadow-sm">
                                                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16e0db7db7f%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16e0db7db7f%22%3E%3Crect%20width%3D%22348%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                                        <div class="card-body">
                                                            <p class="card-text" style="text-align: center">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                                                </div>
                                                                <small class="text-muted">9 mins</small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
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
