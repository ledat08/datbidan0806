
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>

    <div class="wrapper ">
        <div id="formContent">
            <!-- Tabs Titles -->
            <h2 class="active"> Sign In </h2>
            <a href="register" class="btn btn-primary">Sign Up </a>
            <!-- Login Form -->
            <form method="post" action="login" style="padding: 15px;">
                <h4 style="color: green;">${message}</h4><input type="text" id="login"  name="username" placeholder="User Name"></br>
                <h4 style="color: green;">${message}</h4><input type="password" id="password"  name="password" placeholder="Password"><br>
                <input type="submit"  value="Log In"class="btn btn-primary" style="margin-top: 10px;">
            </form>
                
        </div>
    </div>
</body>
