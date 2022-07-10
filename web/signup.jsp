<%-- 
    Document   : SignUp
    Created on : Jul 5, 2022, 5:13:40 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>


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
                                    <a class="nav-link" href="signin.jsp" rel="nofollow">
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
                                <a class="nav-link" href="signup.jsp" rel="nofollow">
                                    <span>Register</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Navbar -->
        </header>


        <!--Main layout-->
        <main class="mt-5">
            <div class="container">
                <!-- Section: Design Block -->
                <section class="text-center">
                    <!-- Background image -->
                    <div class="p-5 bg-image" style="
                         background-image: url('https://thumbs.dreamstime.com/b/food-banner-pasta-chicken-pumpkin-salad-meat-mushrooms-white-wooden-background-top-view-free-space-text-202154861.jpg');
                         height: 300px;
                         "></div>
                    <!-- Background image -->

                    <div class="card mx-4 mx-md-5 shadow-5-strong" style="
                         margin-top: -100px;
                         background: hsla(0, 0%, 100%, 0.8);
                         backdrop-filter: blur(30px);
                         ">
                        <div class="card-body py-5 px-md-5">

                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <h2 class="fw-bold mb-5">Sign up now</h2>
                                    <form method="post" action="Signup">
                                        <!-- 2 column grid layout with text inputs for the first and last names -->
                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <input type="text" name="firstname" id="form3Example1" class="form-control" required/>
                                                    <label class="form-label" for="form3Example1">First name</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <input type="text" name="lastname" id="form3Example2" class="form-control" required/>
                                                    <label class="form-label" for="form3Example2">Last name</label>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Email input -->
                                        <div class="form-outline mb-4">
                                            <input type="email" name="email" value="${email}" id="form3Example3" class="form-control" required/>
                                            <label class="form-label" for="form3Example3">Email address</label>
                                        </div>

                                        <!-- Password input -->
                                        <div class="form-outline mb-4">
                                            <input type="text" name="phonenum" id="form3Example4" class="form-control" required/>
                                            <label class="form-label" for="form3Example4">Phone number</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input type="password" name="password" value="${password}" id="form3Example4" class="form-control" required/>
                                            <label class="form-label" for="form3Example4">Password</label>
                                        </div>

                                        <!-- Checkbox
                                        <div class="form-check d-flex justify-content-center mb-4">
                                          <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                                          <label class="form-check-label" for="form2Example33">
                                            Subscribe to our newsletter
                                          </label>
                                        </div> -->

                                        <!-- Submit button -->
                                        <button type="submit" class="btn btn-primary btn-block mb-4">
                                            Sign up
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
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