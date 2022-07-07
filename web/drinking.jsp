<%-- 
    Document   : Drinking
    Created on : Jul 5, 2022, 5:12:28 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drinking</title>
    
    <!-- Font Awesome -->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
     <!-- Google Fonts -->
     <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
     <!-- MDB -->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />
 
     <link rel="stylesheet" href="css/style.css">

     <style>
        .navbar-light .nav-link {
            color: black !important;
        }
    </style>
       </head>
       
       
    <body>
    <!--Main Navigation-->
    <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light d-none d-lg-block" style="z-index: 2000;">
            <div class="container-fluid">
                <!-- Navbar brand -->
                <a class="navbar-brand nav-link" href="Home">
                    <strong>KOF</strong>
                </a>
                <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarExample01">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" aria-current="page" href="Home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="category.jsp"
                                rel="nofollow">Category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutUs.jsp" >About Us</a>
                        </li>
                    </ul>

                    <ul class="navbar-nav d-flex flex-row">
                        <c:if test="${sessionScope.user==null}">
                            <li class="nav-item me-3 me-lg-0">
                                <a class="nav-link" href="Signin" rel="nofollow">
                                    <span>Login</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.user!=null}">
                            <li class="nav-item me-3 me-lg-0">
                                <a class="nav-link" href="Signout" rel="nofollow">
                                    <span>Logout</span>
                                </a>
                            </li>
                        </c:if>
                        <li class="nav-item me-3 me-lg-0">
                            <a class="nav-link" href="Signup" rel="nofollow">
                                <span>Register</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navbar -->
      </header>


      <main class="mt-5">
        <section class="text-center">

            <div class="row 1">

                <div class="col-lg-4 col-md-12 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/302/982/articles/hollin-bubble-tea-matcha-819x1024.jpg?v=1591151043300https://bizweb.dktcdn.net/100/025/663/articles/matcha-dau-do.png?v=1599525073587" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Matcha Milk</h5>
                            <p class="card-text">
                                Price: 50$<br>
                                Quantity: 20

                            </p>
                            <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="http://gongcha.com.vn/wp-content/uploads/2018/10/Hinh-Web-OKINAWA-TR%C3%80-S%E1%BB%AEA.png"
                                class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Milktea Original</h5>
                            <p class="card-text">
                                Price: 20$<br>
                                The Quantity: 100
                            </p>
                            <a href="#!" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://bonjourcoffee.vn/blog/wp-content/uploads/2020/01/capuchino.jpg" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Capuchino</h5>
                            <p class="card-text">
                                Price: 30$<br>
                                Quantity: 200                                 
                            </p>
                            <a href="#!" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row 2">

                <div class="col-lg-4 col-md-12 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="http://bizweb.dktcdn.net/thumb/grande/100/041/028/products/sinhtobo.png?v=1513153642910" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Avorcado Smoothe</h5>
                            <p class="card-text">
                                Price: 20$<br>
                                Quantity: 900

                            </p>
                            <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://cdn.cet.edu.vn/wp-content/uploads/2020/06/cach-lam-nuoc-ep-dua-hau.jpg"
                                class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Watermelon juice</h5>
                            <p class="card-text">
                                Price: 8$<br>
                                The Quantity: 100
                            </p>
                            <a href="#!" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2022/2/19/cach-lam-nuoc-cam-ep-ngon-va-thom-ket-hop-voi-le-va-gung-5-1645248090817401855254.jpg" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Orange juice</h5>
                            <p class="card-text">
                               Price: 5$<br>
                               Quantity: 100

                            </p>
                            <a href="#!" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row 3">

                <div class="col-lg-4 col-md-12 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://www.unileverfoodsolutions.com.vn/dam/global-ufs/mcos/phvn/vietnam/calcmenu/recipes/VN-recipes/other/energizing-lemon-tea/main-header.jpg" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Lemon Tea</h5>
                            <p class="card-text">
                                Price: 18$<br>
                                Quantity: 200
                            </p>
                            <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://images.immediate.co.uk/production/volatile/sites/30/2017/08/coconut-water-bb9cfe8.jpg"
                                class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Coconut Water</h5>
                            <p class="card-text">
                                Price: 10$<br>
                                The Quantity: 400
                            </p>
                            <a href="#!" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="https://www.priorlakemn.gov/home/showpublishedimage/1078/637384528077200000" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Water</h5>
                            <p class="card-text">
                                Price: 2407$<br>
                                The Quantity: 1 
                            </p>
                            <a href="#!" class="btn btn-primary">ADD TO CART</a>
                        </div>
                    </div>
                </div>
            </div>   
        </section>


        <!--Footer-->
        <footer class="bg-light text-lg-start">
            <hr class="m-0" />

            <div class="text-center py-4 align-items-center">
                <p>Follow TeamThieuNang on social media</p>
                <a  class="btn btn-primary m-1"
                    role="button" rel="nofollow" target="_blank">
                    <i class="fab fa-youtube"></i>
                </a>
                <a  class="btn btn-primary m-1" role="button" rel="nofollow"
                    target="_blank">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a  class="btn btn-primary m-1" role="button" rel="nofollow"
                    target="_blank">
                    <i class="fab fa-twitter"></i>
                </a>
                <a  class="btn btn-primary m-1" role="button"
                    rel="nofollow" target="_blank">
                    <i class="fab fa-github"></i>
                </a>
            </div>

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: #fff;">
                © 2020 Copyright:
                <a class="text-dark" href="https://mdbootstrap.com/">TeamThieuNang.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!--Footer-->
    </main>
    
</body>
</html>