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
        <%@include file="header.jsp" %>

        <main role="main">
            <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
            <div class="container mt-4">
                <div id="thongbao" class="alert alert-danger d-none face" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

                <h1 class="text-center">Cart</h1>
                <div class="row">
                    <div class="col col-md-12 pb-3">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Image</th>
                                    <th>Product's Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody id="datarow">
                                <c:if test="${carts.size() > 0}">
                                    <c:forEach var="i" begin="${0}" end="${carts.size() - 1}">
                                        <tr>
                                            <td>${i + 1}</td>
                                            <c:forEach items="${productList}" var="p">                                          
                                                <c:if test="${carts.get(i).getProductId() == p.getProductId()}">
                                                    <td>
                                                        <img src="${p.getImage()}" style="height:100px" class="hinhdaidien">                                                    
                                                    </td>
                                                    <td>${p.getpName()} </td>
                                                    <td class="text-right">${carts.get(i).getQuantity()}</td>
                                                    <td class="text-right">${p.getPrice()}</td>
                                                    <td class="text-right">${p.getPrice()*carts.get(i).getQuantity()}</td>
                                                    <td>
                                                        <!-- Nút xóa, bấm vào sẽ xóa thông tin dựa vào khóa chính `sp_ma` -->
                                                        <a id="delete_1" data-sp-ma="2" class="btn btn-danger btn-delete-sanpham" href="cart?userid=${userid}&remove=1&productid=${productid}">
                                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                                        </a>
                                                    </td>
                                                </c:if>
                                            </c:forEach>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                            </tbody>
                        </table>

                        <div class="d-flex">
                            <a href="." class="btn btn-warning m-2"><i class="fa fa-arrow-left"
                                                                       aria-hidden="true"></i>Go Home</a>
                            <a href="checkout" class="btn btn-primary m-2">
                                <i class="fa fa-shopping-cart m-0"></i>
                                Order
                            </a>

                            <div class="d-flex flex-row-reverse align-items-center flex-fill">
                                <h3 class="m-0">Your Bill: <strong class="text-danger">${bill}$</strong></h3>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- End block content -->
        </main>

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
                © 2022 Copyright:
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
