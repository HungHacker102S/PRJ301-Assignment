<%-- 
    Document   : Supplement
    Created on : Jul 5, 2022, 5:13:52 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supplement</title>


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

                    <form action="">
                        <input type="search">
                    </form>

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
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfOky-UjmhvVs4x_FDd8OL_aS3FP7hluo2H0-7o4CvcAUf-ySGU_C6CLN4DzqJ218bXCc&usqp=CAU" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Whey Protein</h5>
                                <p class="card-text">
                                    Price: 100$<br>
                                    Quantity: 50
                                </p>
                                <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLPzpn-ssefLKokCLPkmmQwzLzmj_C9bSxsQ&usqp=CAU"
                                     class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Golden Whey Protein</h5>
                                <p class="card-text">
                                    Price: 9999$<br>
                                    The Quantity: 9
                                </p>
                                <a href="#!" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://wheyshop.vn/wp-content/uploads/2021/10/Ostrovit-Testo-Booster-90-vien-1-280x280.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Ostrovit Testo Booster</h5>
                                <p class="card-text">
                                    Price: 13.73$<br>
                                    Quantity: 92                                 
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
                                <img src="https://wheyshop.vn/wp-content/uploads/2019/11/ABE-Pre-Workout-30-servings-280x280.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">ABE Pre Workout</h5>
                                <p class="card-text">
                                    Price: 24.07$<br>
                                    Quantity: 1803

                                </p>
                                <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://wheyshop.vn/wp-content/uploads/2022/06/muscletech-alpha-test-120-vien-280x280.jpg"
                                     class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Muscletech Alpha Test</h5>
                                <p class="card-text">
                                    Price: 23.99$<br>
                                    The Quantity: 99
                                </p>
                                <a href="#!" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://wheyshop.vn/wp-content/uploads/2019/05/Mutant-MADNESS-30sv-280x280.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Mutant MADNESS</h5>
                                <p class="card-text">
                                    Price: 18.49$<br>
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
                                <img src="https://wheyshop.vn/wp-content/uploads/2018/03/Mutant-Mass-5lbs-23kg-280x280.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Mutant Mass</h5>
                                <p class="card-text">
                                    Price: 23.99$<br>
                                    Quantity: 300
                                </p>
                                <a href="food.html" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://wheyshop.vn/wp-content/uploads/2019/05/Biotech-Hyper-Mass-8-280x280.jpg"
                                     class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Biotech Hyper Mass</h5>
                                <p class="card-text">
                                    Price: 25.77$<br>
                                    The Quantity: 350
                                </p>
                                <a href="#!" class="btn btn-primary">ADD TO CART</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="https://wheyshop.vn/wp-content/uploads/2021/12/on-pro-gainer-10lbs-4-6kg-280x280.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">ON Pro Gainer</h5>
                                <p class="card-text">
                                    Price: 37$<br>
                                    The Quantity: 50 
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

    <script src="https://kit.fontawesome.com/150675defe.js" crossorigin="anonymous"></script>


</html>