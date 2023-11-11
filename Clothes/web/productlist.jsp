
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shop Page</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

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

        <div style="clear: both"></div>
        <div class="single-product-area">
            <div class="container">
                <div class="row" >
                    <form action="productlist" method="post" class="row col-md-6">
                        <div class="col-md-5">
                            <select class="form-control" name="category" >
                                <option value="-1">All</option>
                                <c:forEach items="${catList}" var="u">
                                    <option value="${u.id}" ${category == u.id?'selected':''}>${u.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-1">
                            <button class="btn btn-danger">Filter</button>
                        </div>
                    </form>

                    <form action="productlist" method="post" class="row col-md-6">
                        <div class="col-md-5">
                            <input  type="text" name="search" class="form-control" value="${search}"
                                    placeholder="Search By Name" />
                        </div>

                        <div class="col-md-1">
                            <button class="btn btn-danger">Search</button>
                        </div>
                    </form>

                </div>
                <table border="1" style="width: 100%">
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

                <div class="row">
                    <div class="product-pagination ">
                        <nav>
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <c:forEach begin="1" end="${total}" var="c">
                                    <li class="${page == c ? "active":""}"><a href="productlist?page=${c}&category=${category}&search=${search}" >${c}</a></li>
                                    </c:forEach>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
