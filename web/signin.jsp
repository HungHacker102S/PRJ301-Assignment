<%-- 
    Document   : SignIn
    Created on : Jul 5, 2022, 5:13:31 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>

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
            <nav class="navbar navbar-expand-lg navbar-light d-none d-lg-block"
                 style="z-index: 2000;">
                <div class="container-fluid">
                    <!-- Navbar brand -->
                    <a class="navbar-brand nav-link" href=".">
                        <img src="images/logo.svg" width="50" class="rounded-circle" alt="alt"/>
                    </a>
                    <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                            data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <i class="fas fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarExample01">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link" aria-current="page" href=".">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./#category" rel="nofollow">Category</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./#about-us">About Us</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav d-flex flex-row">
                            <c:if test="${sessionScope.user==null}">
                                <li class="nav-item me-3 me-lg-0">
                                    <a class="nav-link" href="signin.jsp" rel="nofollow">
                                        <span>Login</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.user!=null}">
                                <li class="nav-item me-3 me-lg-0">
                                    <a class="nav-link" href="signout" rel="nofollow">
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </c:if>
                            <li class="nav-item me-3 me-lg-0">
                                <a class="nav-link" href="signup.jsp" rel="nofollow">
                                    <span>Register</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
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
                                            <form method="post" action="signin">
                                                <!-- Email input -->
                                                <div class="form-outline mb-4">
                                                    <input type="email" name="email" value="${email}" id="form3Example3" class="form-control" required />
                                                    <label class="form-label" for="form3Example3">Email address</label>
                                                </div>

                                                <!-- Password input -->
                                                <div class="form-outline mb-4">
                                                    <input type="password" name="password" value="${password}" id="form3Example4" class="form-control" required/>
                                                    <label class="form-label" for="form3Example4">Password</label>
                                                </div>
                                                <!-- Submit button -->
                                                <button type="submit" class="btn btn-primary btn-block mb-4">
                                                    Sign in
                                                </button>
                                                <!-- Forgot button -->
                                                <a href="forgotpassword.jsp">
                                                    Forgot Password ?
                                                </a>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 mb-5 mb-lg-0">
                                    <img src="https://susudev.com/wp-content/uploads/2021/08/fast-food-english-luyennghetienganh-susudev-cambly.jpg"
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
    </body>

    <!-- MDB -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"></script>

</html>
