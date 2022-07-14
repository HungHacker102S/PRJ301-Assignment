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
        <%@include file="header.jsp" %>

        <div class="container pt-5">
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


                    <form action="cart" method="post" class="mt-3 mb-3">  
                        <input type="hidden" name="productid" value="${product.getProductId()}">
                        <div class="choose_quantity mb-3 d-flex align-items-center">
                            <span style="font-weight: bold" class="me-1">Quantity:</span>
                            <input type="number" value="1" name="quantity" min="0" max="${product.getQuantity() - cart.getQuantity()}">
                        </div>

                        <input type="submit" value="ADD TO CART" class="btn btn-danger btn-delete-sanpham" onclick="" >
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
                <a class="btn btn-primary m-1" role="button"
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


