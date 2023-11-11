

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
        <title>Cart Page</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
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
                            <h2>Shopping Cart</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End Page title area -->


        <div class="single-product-area">
            <div class="woocommerce">

                <table  style="width: 90%; margin-left: 5%" class="shop_table cart">
                    <thead>
                        <tr>
                            <th class="product-thumbnail">Image</th>
                            <th class="product-name">Name</th>
                            <th class="product-price">Price</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Sub Total</th>
                            <th class="product-subtotal">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.cart}" var="u">
                        <form method="get" action="cart">
                            <tr class="cart_item">


                                <td class="product-thumbnail">
                                    <a><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="${u.value.product.image}"></a>
                                </td>
                            <input type="hidden" name="id" value="${u.value.product.id}">
                            <td class="product-name">
                                <a>${u.value.product.name}</a> 
                            </td>

                            <td class="product-price">
                                <span class="amount">${u.value.product.sale_price}</span> 
                            </td>

                            <td class="product-quantity">
                                <div class="quantity buttons_added">

                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="${u.value.stock}" name="quantity" min="1" max="${u.value.product.quantity}" step="1">

                                </div>
                            </td>

                            <td class="product-subtotal">
                                <span class="amount">$${u.value.stock*u.value.product.sale_price}</span> 
                            </td>
                            <td class="actions" colspan="6">
                                <input type="submit"  value="Update" class="button">
                            </td>
                            </tr>
                        </form>
                    </c:forEach>
                    <tr>
                        <td>
                            <h2>    Total: $${total}</h2>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div class="text-center"><a href="productlist"><button  value="Buy more">Buy more</button></a></div>
                    <c:if test="${sessionScope.account == null}">
                        <div class="text-center">
                            <a class="shipping-calculator-button" href="login" ><input type="submit" value="Contact" name="update_cart" class="button"></a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.account != null}">
                        <form method="post" action="order" class="shipping_calculator">
                            <h2><a class="shipping-calculator-button" data-toggle="collapse" href="#calcalute-shipping-wrap" aria-expanded="false" aria-controls="calcalute-shipping-wrap"><input type="submit" value="Contact" name="update_cart" class="button"></a></h2>

                            <section id="calcalute-shipping-wrap" class="shipping-calculator-form collapse">

                                <p class="form-row form-row-wide text-center">Customer Name<input type="text" id="calc_shipping_state" name="username" placeholder="Name" value="${sessionScope.account.username}" class="input-text"  readonly> </p>

                                <p class="form-row form-row-wide text-center">Address<input type="text" id="calc_shipping_postcode" name="address" placeholder="Address" value="${sessionScope.account.address}" class="input-text"></p>

                                <p class="form-row form-row-wide text-center">Phone<input type="text" id="calc_shipping_postcode" name="phone" placeholder="Phone" value="${sessionScope.account.phone}" class="input-text"></p>

                                <input type="hidden" name="total" value="${total}">
                                <p><button class="button" value="1" name="calc_shipping" type="submit">Order</button></p>

                            </section>

                        </form>
                    </c:if>

                </div>
            </div>                    
        </div>


    </body>
</html>
