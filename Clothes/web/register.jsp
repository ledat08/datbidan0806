
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <!-- Tabs Titles -->
            <a href="register"><h2 class="active">Sign Up </h2></a>
            <!-- Login Form -->
            <form method="post" action="register">
                <input type="text"   name="username" placeholder="Username"  required><br>
                <input type="password"   name="password" placeholder="Password" required><br>
                <input type="text"  name="mail" placeholder="Mail" required><br>
                <input type="text"   name="phone" placeholder="Phone" required ><br>
                <input type="text"   name="address" placeholder="Address" required><br>
                <input type="submit"  value="Register">        <a href="login"> Sign In </a>
            </form>
        </div>
    </div>
</body>
