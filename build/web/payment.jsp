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
    <!--css-->
    <link rel="stylesheet" href="css/style.css">
        
    <!--logo-->
    <link rel="icon" href="images/logo.svg">
    
    
     <style>
       .navbar-light .nav-link {
           color: black !important;
       }    
       /*
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/CascadeStyleSheet.css to edit this template
*/
.store a{
    color: black;
}

.descript{
    border-right: 1px solid grey;
    margin-bottom: 15px;
}

.detail{
    border-bottom: 1px solid grey;
}

.choose_size{
    margin-top: 10px;
    margin-bottom: 10px;
}

.choose_size select{
    height: 41px;
    font-weight: bold;
}
.choose_quantity{
    opacity:1;
    display:inline-block;
    display:-ms-inline-flexbox;
    display:inline-flex;
    white-space:nowrap;
    vertical-align:top;
}

.is-form {
    overflow:hidden;
    position:relative;
    background-color:#f9f9f9;
    height:2.2rem;
    width:1.9rem;
    padding:0;
    text-shadow:1px 1px 1px #fff;
    border:1px solid #ddd;
}

.is-form:focus,.input-text:focus {
    outline:none;
}
.is-form.minus {
    margin-left: 30px;
    border-radius:4px 0 0 4px;
}
.is-form.plus {
    border-radius:0 4px 4px 0;
}
.input-qty {
    width:50px;
    background-color:#fff;
    height:2.2rem;
    text-align:center;
    font-size:1rem;
    display:inline-block;
    vertical-align:top;
    margin:0;
    border-top:1px solid #ddd;
    border-bottom:1px solid #ddd;
    border-left:0;
    border-right:0;
    padding:0;
}

.input-qty::-webkit-outer-spin-button,.input-qty::-webkit-inner-spin-button {
    -webkit-appearance:none;
    margin:0;
}

#order{
    background-color: red;
    border: none;
    color: white;
    border-radius: 20px;
    font-size: 20px;
    margin-left: 10px;
    padding: 5px 30px;
    font-weight: bold;
}

#alert_choose_size{
    color: #fff;
    display: inline-block;
    background-color: #a94442;
    padding: 0 5px;
    margin: 5px 0;
    border-radius: 3px;
    font-size: 11px;
}

#alert_login{
    color: #fff;
    display: inline-block;
    background-color: #a94442;
    padding: 0 5px;
    margin: 5px 0;
    border-radius: 3px;
    font-size: 11px;
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
                            <a class="nav-link" href="category.jsp" rel="nofollow">Category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutUs.jsp">About Us</a>
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
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navbar -->
    </header>

       <div class="item">
                    <div class="row">
                        <div class="col-sm-4">
                            <img class="img-responsive img-fluid" src="${product.getImage()}"/>
                        </div>
                        <div class="col-sm-8">
                            <p style="font-size: 26px; font-weight: bold">${product.getpName()}</p>
                            <div class="row detail">
                                <div class="col-sm-4 descript" style="font-size: 12.98px">
                                    
                                </div>
                                <div class="col-sm-8">
                                    <p><span>Price: </span><span style="color: red; font-size: 32px; font-weight: 500">${product.getPrice2()} $</span></p>
                                    <p style="font-size: 11px; font-weight: bold">FREE SHIP FROM ALL CITIES IN VIET NAM</p>
                                </div>
                            </div>

                            <form>                               
                                <div class="choose_quantity">
                                    <span style="font-weight: bold">Quantity:</span>
                                    <input class="minus is-form" type="button" value="-" onclick="decrease()">
                                    <input class="input-qty" name="quantity" type="text" value="1" oninput="checkQuantity()">
                                    <input class="plus is-form" type="button" value="+" onclick="increase()">
                                </div>
                                <input type="submit" value="Order Now" id="order" onclick="notAllowToOrder()">
                            </form>
<!--                            <div id="alert_login">
                                Vui lòng đăng nhập trước khi đặt hàng
                            </div>-->
                        </div>
                    </div>
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
