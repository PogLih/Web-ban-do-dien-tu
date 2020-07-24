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
                        <form action="controllerCartBean" method="post"><button value="View Cart" name="action" class="btn btn-success">View Cart</button></form><br>
                                    
                    <a href="login.jsp" style="padding-top: 18px" class="nav-link">Logout</a>
                             </ul>

            </div>
        </nav>

        <!--       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>-->