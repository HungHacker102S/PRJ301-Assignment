<%-- 
    Document   : editInformation
    Created on : Jul 12, 2022, 12:57:16 AM
    Author     : MSI Modern 14
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Information</title>
    </head>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/style.css">
    <!--logo-->
    <body>
        <header>
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block" style="z-index: 2000;">
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
                                <a class="nav-link" style="color: black !important" aria-current="page" href=".">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: black !important" href="#category"
                                   rel="nofollow">Category</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: black !important" href="#about-us" >About Us</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav d-flex flex-row">
                            <c:if test="${sessionScope.user != null}">
                                <li class="nav-item me-3 me-lg-0">
                                    <a class="nav-link" href="information.jsp" rel="nofollow" style="color: black !important">
                                        ${sessionScope.user.fullname}
                                    </a>
                                </li>
                                <li class="nav-item me-3 me-lg-0">
                                    <a class="nav-link" href="signout" rel="nofollow" style="color: black !important">
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.user == null}">

                                <li class="nav-item me-3 me-lg-0">
                                    <a class="nav-link" href="signin.jsp" rel="nofollow" style="color: black !important">
                                        <span>Login</span>
                                    </a>
                                </li>
                                <li class="nav-item me-3 me-lg-0">
                                    <a class="nav-link" href="signup.jsp" rel="nofollow" style="color: black !important">
                                        <span>Register</span>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Navbar -->
        </header>
        <form action="edit" method="post">
            <div>
                UserID:<input type="text" name="id" value="${user.getUserID()}" readonly>
                <br>Fullname:<input type="text" name="fullname" value="${user.getFullname()}">
                <br>Password:<input type="password" name="password" value="${user.getPassword()}">
                <br>Phone:<input type="text" name="phone" value="${user.getPhone()}">
                <br>Email:<input type="text" name="email" value="${user.getEmail()}">
                <br>Role:<input type="text" name="role" value="${user.getRole()}" readonly>
                <br><button>Submit</button>
            </div>
        </form>
    </body>
</html>
