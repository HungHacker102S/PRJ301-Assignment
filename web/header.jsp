<%-- 
    Document   : header
    Created on : Jul 15, 2022, 3:01:00 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                            <a class="nav-link" href="cart"  style="color: black !important">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                        </li>

                        <li class="nav-item me-3 me-lg-0">
                            <a class="nav-link" href="info<c:if test="${sessionScope.user.getRole()}">rmation</c:if>"  style="color: black !important">
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

    <!-- Navbar brand -->
    <div class="d-flex justify-content-between d-md-none">
        <a class="navbar-brand nav-link" href=".">                   
            <img src="images/logo.svg" width="50" class="rounded-circle" alt="alt"/>                 
        </a>

        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false"
                aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
    </div>

    <div class="collapse navbar-collapse p-3" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item active">
                <a class="nav-link" aria-current="page" href=".">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#category"
                   rel="nofollow">Category</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./#about-us" >About Us</a>
            </li>
        </ul>

        <ul class="navbar-nav d-flex flex-row">

            <c:if test="${sessionScope.user != null}">
                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link" href="info<c:if test="${sessionScope.user.getRole()}">rmation</c:if>">
                        ${sessionScope.user.fullname}
                    </a>
                </li>
                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link" href="signout" rel="nofollow">
                        <span>Logout</span>
                    </a>
                </li>
            </c:if>

            <c:if test="${sessionScope.user == null}">

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
            </c:if>

        </ul>
    </div>
</div>
</nav>
<!-- Navbar -->
</header>