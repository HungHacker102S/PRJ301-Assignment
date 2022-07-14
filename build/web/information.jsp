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
            table,td {
                border: solid black;
            }
            table{
                border-collapse:collapse;
            }
        </style>

    </head>
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
                                <a class="nav-link" style="color: black !important" href="./#category"
                                   rel="nofollow">Category</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: black !important" href="./#about-us" >About Us</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav d-flex flex-row">
                            <c:if test="${sessionScope.user != null}">
                                <c:if test="${sessionScope.user.role==true}">
                                    <li class="nav-item me-3 me-lg-0">
                                        <a class="nav-link" href="information" rel="nofollow" style="color: black !important">
                                            ${sessionScope.user.getFullname()}
                                        </a>
                                    </li>
                                </c:if>
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
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>
<form>
    <div>
        <table>
            <tr>
                <td>UserID</td>
                <td>FullName</td>
                <td>Password</td>
                <td>Phone</td>
                <td>Email</td>
                <td>Role</td>
                <td>Address</td>
            </tr>
            <c:forEach items="${list}" var="list">
                <tr>
                    <td>${list.getUserID()}</td>
                    <td>${list.getFullname()}</td>
                    <td>${list.getPassword()}</td>
                    <td>${list.getPhone()}</td>
                    <td>${list.getEmail()}</td>
                    <td>${list.getRole()}</td>
                    <td>${list.getAddress()}</td>
                    <td>
                        <a href="edit?userID=${list.getUserID()}">update</a> 
                        <a href="#" onclick="deletecf(${list.getUserID()})">delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</form>

</body>
<script>
    function deletecf(id) {
        var mess = confirm('are you sure to delete');
        if(mess === true)
            window.location.href = 'delete?userID=' +id;
    }
</script>
</html>