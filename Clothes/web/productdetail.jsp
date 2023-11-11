

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
        <title>Product Page - Ustora Demo</title>


        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <![endif]-->
    </head>
    <body>

        <jsp:include page="header.jsp"/>

        <div class="product-big-title-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-bit-title text-center">
                            <h2>Shop</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="product-content-right">
                            <div class="product-breadcroumb">
                                <a href="home">Home</a>
                                <a href="">${product.name}</a>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="product-images">
                                        <div class="product-main-img">
                                            <img src="${product.image}" width="290px" alt="">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="product-inner">
                                        <h2 class="product-name">${product.name}</h2>
                                        <div class="product-inner-price">
                                            <ins>${product.sale_price}$</ins> <del>${product.price}$</del>
                                        </div>    

                                        <form action="cart" class="cart" method="get">
                                            <div class="quantity">
                                                <input type="number" max="${product.quantity}" class="input-text qty text" title="Qty" name="quantity" min="1" step="1">
                                            </div>
                                            <input type="hidden" name="id" value="${product.id}">
                                            <button class="add_to_cart_button" type="submit">Add to cart</button>
                                        </form>   

                                        <div class="product-inner-category">

                                        </div> 

                                        <div role="tabpanel">
                                            <ul class="product-tab" role="tablist">
                                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>

                                            </ul>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                    <h2>Product Description</h2>  
                                                    <p>${product.text}</p>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>


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
                        </div>                    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
