<%-- 
    Document   : Category
    Created on : Jul 9, 2022, 5:31:34 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KOF</title>
        <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/style.css">
        <!--logo-->
    <link rel="icon" href="images/logo.svg">
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
                            <a class="nav-link" href="#category" rel="nofollow">Category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about-us">About Us</a>
                        </li>
                    </ul>

                    <ul class="navbar-nav d-flex flex-row">
                        <li class="nav-item me-3 me-lg-0">
                            <a class="nav-link" href="signin.jsp" rel="nofollow">
                                <span>Login</span>
                            </a>
                        </li>
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

       <div class="item">
           <section class="text-center">
               <div class="row">
                        <c:forEach items="${c}" var="x">
                            <div class="col-sm-4" style="border:1px pink solid">
                                <img class="img-responsive img-fluid" style="height:300px" src="${x.getImage()}"/><br>
                                <p style="text-align: center; text-transform: uppercase; font-size: 15px">${x.getpName()}</p>
                                <p style="text-align: center; font-size: 14px">
                                Price: <span style="font-size: 20px">${x.getPrice2()}$</span></p>
                                <p style="text-align: center; font-size: 14px">
                                Quantity: <span style="font-size: 20px">${x.getQuantity()}</span></p>
                                <a href="payment?pid=${x.getProductId()}" class="btn btn-primary">CLICK TO ORDER</a>
                            </div>
                        </c:forEach>
                    </div>
               </section>
                </div>
       

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

<!-- MDB -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"></script>
<script src="https://kit.fontawesome.com/150675defe.js" crossorigin="anonymous"></script>

</html>
