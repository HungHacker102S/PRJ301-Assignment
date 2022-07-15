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
        <%@include file="header.jsp" %>
        <form method="post">
            <div class="container p-3">
                    <div class="form-floating mb-3">
                        <input type="text" name="userID" value="${user.getUserID()}" class="form-control" readonly>
                        <label class="form-label">UserID</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="fullname" value="${user.getFullname()}" class="form-control">
                        <label class="form-label">Fullname</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="password" value="${user.getPassword()}" class="form-control">
                        <label class="form-label">Password</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="phone" value="${user.getPhone()}" class="form-control">
                        <label class="form-label">Phone</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" name="email" value="${user.getEmail()}" class="form-control">
                        <label class="form-label">Email</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="address" value="${user.getAddress()}" class="form-control">
                        <label class="form-label">Address</label>
                    </div>
                    <button type="submit" onclick="showMess()" class="btn btn-primary">Update</button>
                </div>
            </form>
    </body>
    <script>
        function showMess() {
            var mess = 'Update successful!';
            alert(mess);
        }
    </script>
</html>