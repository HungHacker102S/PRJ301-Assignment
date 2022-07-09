<%-- 
    Document   : Food
    Created on : Jul 5, 2022, 5:12:37 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food</title>


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
                                <a class="nav-link" href="category.jsp" rel="nofollow">Category</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="aboutUs.jsp">About Us</a>
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
                                    <a class="nav-link" href="#">
                                        ${sessionScope.user.firstname.concat(" ").concat(sessionScope.user.lastname)}
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
                                <img src="https://img.dominos.vn/Veggie-mania.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Pizza</h5>
                                <p class="card-text">
                                    Price: 20$<br>
                                    Quantity: 100

                                </p>
                                <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://hamburgerdanang.com/wp-content/uploads/2021/03/the-ultimate-hamburger.jpg"
                                     class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Hamburger</h5>
                                <p class="card-text">
                                    Price: 5$<br>
                                    The Quantity: 100
                                </p>
                                <a href="#!" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://kenh14cdn.com/2019/2/2/cr-health-inlinehero-healthy-hotdogs-07-18-15490912572491297258971.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Hot Dog</h5>
                                <p class="card-text">
                                    Price: 3$<br>
                                    Quantity: 100                                 
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
                                <img src="https://goldenapplecannabis.com/wp-content/uploads/2015/11/golden-apple-768x450.png" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Golden Apple</h5>
                                <p class="card-text">
                                    Price: 999$<br>
                                    Quantity: 99

                                </p>
                                <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://images.unsplash.com/photo-1626094309830-abbb0c99da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80"
                                     class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Donut</h5>
                                <p class="card-text">
                                    Price: 6$<br>
                                    The Quantity: 100
                                </p>
                                <a href="#!" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://insanelygoodrecipes.com/wp-content/uploads/2020/04/Fried_Chicken-1024x536.png" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Fried Chicken</h5>
                                <p class="card-text">
                                    Price: 2$<br>
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
                                <img src="https://pbs.twimg.com/media/FJehAzbXsAgH6Sg.jpg:large" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">French fries</h5>
                                <p class="card-text">
                                    Price: 15$<br>
                                    Quantity: 200


                                </p>
                                <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://www.kindpng.com/picc/m/270-2707027_grill-clipart-bbq-sausage-hot-dog-sausage-png.png"
                                     class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Sausage</h5>
                                <p class="card-text">
                                    Price: 3$<br>
                                    The Quantity: 500
                                </p>
                                <a href="#!" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://sovina.vn/wp-content/uploads/2016/11/khoai-tay-chien-slide-kinh-do-vi-cheese-lon-160g_3082677577757980900-300x300.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Patato Snack</h5>
                                <p class="card-text">
                                    Price: 25$<br>
                                    The Quantity: 300 
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
                    <a class="text-dark" >TeamThieuNang.com</a>
                </div>
                <!-- Copyright -->
            </footer>
            <!--Footer-->
        </main>
    </body>


</html>