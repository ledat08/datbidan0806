<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shop Page</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <div class="container">

            <div class="row">
                <h4 class="text-center mb-4">Order List</h4>
                <table border="1" style="width: 100%">
                    <thead class="thead-primary">
                        <tr>
                            <th style="color: rgb(77, 148, 255);">ID</th>
                            <th style="color: rgb(77, 148, 255);">Total</th>
                            <th style="color: rgb(77, 148, 255);">Username</th>
                            <th style="color: rgb(77, 148, 255);">Phone</th>
                            <th style="color: rgb(77, 148, 255);">Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${orderList}" var="c">
                            <tr>
                                <td>${c.id}</td>
                                <td>${c.total}$</td>
                                <td>${c.userName}</td>
                                <td>${c.phone}</td>
                                <td>${c.address}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>


