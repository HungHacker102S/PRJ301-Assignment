<%-- 
    Document   : navbar
    Created on : Jun 16, 2022, 10:58:40 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block" style="z-index: 2000;">
    <div class="container-fluid">
        <!-- Navbar brand -->
        <a class="navbar-brand nav-link" href="Home">
            <strong>Food Store</strong>
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
                    <a class="nav-link" href="#category"
                       rel="nofollow">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutUs.jsp" >About Us</a>
                </li>
            </ul>

            <ul class="navbar-nav d-flex flex-row">
                <c:if test="${sessionScope.user==null}">
                    <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link" href="Signin" rel="nofollow">
                        <span>Login</span>
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
                    <a class="nav-link" href="Signup" rel="nofollow">
                        <span>Register</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>