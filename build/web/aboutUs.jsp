<%-- 
    Document   : Home
    Created on : Jul 5, 2022, 5:12:10 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
    </head>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/style.css">

<body>
    <!--Main Navigation-->

    <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block" style="z-index: 2000;">
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

        <!-- Carousel wrapper -->
        <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
                <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
                <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
            </ol>

            <!-- Inner -->
            <div class="carousel-inner">
                <!-- Single item -->
                <div class="carousel-item active">
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
                        <div class="d-flex justify-content-center align-items-center h-100">
                            <div class="text-white text-center">
                                <h1 class="mb-3">! SALE TO DIE !</h1>
                                <h5 class="mb-4">-38% sales hehehe</h5>
                                <a class="btn btn-outline-light btn-lg m-2"
                                   href="#readmore" role="button" rel="nofollow"
                                   target="_blank">READMORE</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single item -->
                <div class="carousel-item">
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.3);">
                        <div class="d-flex justify-content-center align-items-center h-100">
                            <div class="text-white text-center">
                                <h2>! BIG SALE FOR DRINK !</h2>
                                <h2>-50% sale of for Avorcado</h2>
                                <h2>Amazing</h2>
                                <a class="btn btn-outline-light btn-lg m-2"
                                   href="#readmore" role="button" rel="nofollow"
                                   target="_blank">READMORE</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single item -->
                <div class="carousel-item">
                    <div class="mask" style="
                         background: linear-gradient(
                         45deg,
                         rgba(29, 236, 197, 0.7),
                         rgba(91, 14, 214, 0.7) 100%
                         );
                         ">
                        <div class="d-flex justify-content-center align-items-center h-100">
                            <div class="text-white text-center">
                                <h2>!! JUST SIGNUP AND YOU WILL HAVE VOUCHER !!</h2>
                                <a class="btn btn-outline-light btn-lg m-2"
                                   href="https://mdbootstrap.com/docs/standard/content-styles/masks/" target="_blank"
                                   role="button">SIGN IN</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Inner -->

            <!-- Controls -->
            <a class="carousel-control-prev" href="#introCarousel" role="button" data-mdb-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#introCarousel" role="button" data-mdb-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- Carousel wrapper -->
    </header>
    <!--Main Navigation-->

    <!--Main layout-->
    <main class="mt-5">
        <div class="container">
            <!--Section: Content-->
            <section>
                <div class="row">
                    <div class="col-md-6 gx-5 mb-4">
                        <div class="bg-image hover-overlay ripple shadow-2-strong rounded-5"
                             data-mdb-ripple-color="light">
                            <img src="https://mdbootstrap.com/img/new/slides/031.jpg" class="img-fluid" />
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6 gx-5 mb-4">
                        <h4><strong>Introduction about us</strong></h4>
                        <p class="text-muted">
                            Hello to the customer, We are Team_6 from KOF. Our Team has
                            3 members: TRAN MANH HUNG, TRINH ANH DUC, NGUYEN DUC HOA. We decided to create this 
                            with the purpose just want you, our special customer to enjoy our food.  
                        </p>
                        <p><strong>History</strong></p>
                        <p class="text-muted">                          
                            KOF is stands for King Of Food, We made it in 2022. It just the beta version to
                            sell the most yummy food in the world.

                        </p>
                    </div>
                </div>
            </section>
            <!--Section: Content-->

            <hr class="my-5" />
        </div>
    </main>
    <!--Main layout-->

    <!--Footer-->
    <footer class="bg-light text-lg-start">
        <hr class="m-0" />

        <div class="text-center py-4 align-items-center">
            <p>Follow Team 6 Right Now</p>
            <a  class="btn btn-primary m-1" role="button"
                rel="nofollow" target="_blank">
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
            <a  class="btn btn-primary m-1" role="button" rel="nofollow"
                target="_blank">
                <i class="fab fa-github"></i>
            </a>
        </div>

        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: #fff;">
            © 2022 Copyright:
            <a class="text-dark" >Team6.com</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!--Footer-->
</body>

<!-- MDB -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"></script>
<script src="https://kit.fontawesome.com/150675defe.js" crossorigin="anonymous"></script>

</html>