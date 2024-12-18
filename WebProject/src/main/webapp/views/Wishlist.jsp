<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Wishlist.css">
    <title>Wishlist</title>
    <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Shop.css">
<script src="${pageContext.request.contextPath}/js/Home.js"></script>
</head>

<body>
    <div id="header-container">
		<%@ include file="Header.jsp"%></div>

    <div class="wishlist__items">
        <form action="/wishlist" method="post" id="wishlist_form">
            <!-- Wishlist Top Bar -->
            <div class="wishlist__top--bar">
                <span>0 items</span>
            </div>

            <!-- Hidden Input for Wishlist ID -->
            <input type="hidden" name="wishlist_id" value="381699">

            <!-- Wishlist Items -->
            <ul class="wishlist__items--ul">
                <!-- Loop over wishlist items from the server-side data -->
                <c:forEach var="item" items="${wishlistItems}">
                    <li class="wishlist__item">
                        <a class="wishlist__remove" href="#">X</a>
                        <div class="wishlist__image">
                            <a href="${item.url}">
                                <img src="${item.imageUrl}" alt="${item.name}">
                            </a>
                        </div>
                        <div class="wishlist__item--details">
                            <div class="details--title">
                                <a href="${item.url}">${item.name}</a>
                            </div>
                            <div class="details--price">
                                <span>${item.price}</span>
                            </div>
                        </div>
                        <button type="button">Move to Bag</button>
                    </li>
                </c:forEach>
            </ul>

            <!-- Button Area -->
            <div class="button__area">
                <!-- Replace Send Wishlist with Checkout and Add Continue Shopping Button -->
                <button type="submit">Checkout</button>
                <button type="button" onclick="location.href='/Shop.jsp'">Continue Shopping</button>
            </div>
        </form>
    </div>

     <div id="footer-container">
		   <%@ include file="Footer.jsp"%>
</body>

</html>
