<%-- 
    Document   : signin
    Created on : Jun 16, 2022, 11:06:44 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Store</title>

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/style.css">

    <style>
        .navbar-dark .nav-link {
            color: black !important;
        }
    </style>
</head>

<body>
    <!--Main Navigation-->
    <header>
        <!-- Navbar -->
        <%@include file="navbar.jsp" %>
        <!-- Navbar -->

        <!--Main layout-->
        <main class="mt-5">
            <div class="container">
                <!-- Section: Design Block -->
                <section class="text-center text-lg-start">
                    <style>
                        .cascading-right {
                            margin-right: -50px;
                        }

                        @media (max-width: 991.98px) {
                            .cascading-right {
                                margin-right: 0;
                            }
                        }
                    </style>

                    <!-- Jumbotron -->
                    <div class="container py-4">
                        <div class="row g-0 align-items-center">
                            <div class="col-lg-6 mb-5 mb-lg-0">
                                <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
                                    <div class="card-body p-5 shadow-5 text-center">
                                        <h2 class="fw-bold mb-5">Sign in</h2>
                                        <form>
                                            <!-- Email input -->
                                            <div class="form-outline mb-4">
                                                <input type="email" id="form3Example3" class="form-control" />
                                                <label class="form-label" for="form3Example3">Email address</label>
                                            </div>

                                            <!-- Password input -->
                                            <div class="form-outline mb-4">
                                                <input type="password" id="form3Example4" class="form-control" />
                                                <label class="form-label" for="form3Example4">Password</label>
                                            </div>

                                            <!-- Submit button -->
                                            <button type="submit" class="btn btn-primary btn-block mb-4">
                                                Sign in
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 mb-5 mb-lg-0">
                                <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg"
                                    class="w-100 rounded-4 shadow-4" alt="" />
                            </div>
                        </div>
                    </div>
                    <!-- Jumbotron -->
                </section>
                <!-- Section: Design Block -->
            </div>
        </main>
        <!--Main layout-->

        <!--Footer-->
        <footer class="bg-light text-lg-start">
            <hr class="m-0" />

            <div class="text-center py-4 align-items-center">
                <p>Follow TeamThieuNang on social media</p>
                <a href="https://www.youtube.com/channel/UC5CF7mLQZhvx8O5GODZAhdA" class="btn btn-primary m-1"
                    role="button" rel="nofollow" target="_blank">
                    <i class="fab fa-youtube"></i>
                </a>
                <a href="https://www.facebook.com/mdbootstrap" class="btn btn-primary m-1" role="button" rel="nofollow"
                    target="_blank">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="https://twitter.com/MDBootstrap" class="btn btn-primary m-1" role="button" rel="nofollow"
                    target="_blank">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="https://github.com/mdbootstrap/mdb-ui-kit" class="btn btn-primary m-1" role="button"
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
</body>
<!-- MDB -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"></script>

</html>
