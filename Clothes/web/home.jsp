<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
        ustora by freshdesignweb.com
        Twitter: https://twitter.com/freshdesignweb
        URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Clothes Shop</title>

   
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

    </head>
    <body>


        <jsp:include page="header.jsp"/>
        <h2 class="section-title">Latest Products</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Add Cart</th>
                    <th>See detail</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${proList}" var="c">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.name}</td>
                        <td>  <img style="height: 250px;widows: 150px;" src="${c.image}" alt=""></td>
                        <td><ins>${c.sale_price}$</ins> <del>${c.price}$</del></td>
                        <td><a href="cart?quantity=1&id=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a></td>
                        <td><a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <h2 class="section-title">Sale Products</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Add Cart</th>
                    <th>See detail</th>
                </tr>
            </thead>
            <tbody>
                 <c:forEach items="${proList2}" var="c">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.name}</td>
                        <td>  <img style="height: 250px;widows: 150px;" src="${c.image}" alt=""></td>
                        <td><ins>${c.sale_price}$</ins> <del>${c.price}$</del></td>
                        <td><a href="cart?quantity=1&id=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a></td>
                        <td><a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>