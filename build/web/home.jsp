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
        <title>KOF</title>
    </head>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/style.css">
    <!--logo-->
    <link rel="icon" href="images/logo.svg">

</head>



<body>
    <!--Main Navigation-->    
    <%@include file="header.jsp" %>
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

    <!--Main Navigation-->

    <!--Main layout-->
    <main class="mt-5">
        <div class="container">
            <!--Section: Content-->
            <section id="about-us">
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

            <!--Section: Content-->
            <section class="text-center" id="category">
                <h4 class="mb-5"><strong>CATEGORY</strong></h4>

                <div class="row">
                    <div class="col-lg-4 col-md-12 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="pink">
                                <img src="https://t3.ftcdn.net/jpg/03/35/51/06/360_F_335510693_HY7mLg3ARdLccKoXk3m66NLDpJRJh51p.jpg" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Food</h5>
                                <p class="card-text">
                                    For the yummy food in the world like: hamburger, Pizza, Donut,...
                                </p>
                                <a href="category?category=food" class="btn btn-primary">CLICK FOR MORE</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="pink">
                                <img src="https://cdn.dribbble.com/users/7436718/screenshots/16198370/media/ca2b3a72659741691286748e3ab099b8.jpg?compress=1&resize=400x300" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Drinking</h5>
                                <p class="card-text">
                                    For the delicious drinks like: Avorcado juice, Orange juice, Grape juice,...
                                </p>
                                <a href="category?category=drink" class="btn btn-primary">CLICK FOR MORE</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="pink">
                                <img src="https://www.foodbusinessnews.net/ext/resources/2021/4/Onnit_Lead.jpg?t=1619524614&width=1080" class="img-fluid" />
                                <a href="#!">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Supplement For GYMER</h5>
                                <p class="card-text">
                                    We sell the good suplements for you to support trainning in Workout. Want to 
                                    try hard to build your beautiful muscle, just come here ! 
                                </p>
                                <a href="category?category=supplement" class="btn btn-primary">CLICK FOR MORE</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Section: Content-->
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
