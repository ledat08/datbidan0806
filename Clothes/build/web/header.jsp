

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="mainmenu-area">
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav" style="display: flex; justify-content: center">
            <li><a href="home">Home</a></li>
            <li><a href="productlist">Shop page</a></li>

            <li><a href="cart">Cart</a></li>
            <li><a href="order">My Order</a></li>


            <c:if test="${sessionScope.account != null}">
                <c:if  test="${sessionScope.account.role == 1}">
                    <li><a href="manage">(Admin)Manage</a></li>
                    </c:if>

                <li><a href="logout">Logout</a></li>
                </c:if>
                <c:if test="${sessionScope.account == null}">
                <li><a href="login">Login</a></li>
                </c:if>
        </ul>
    </div>  
</div> <!-- End mainmenu area -->
