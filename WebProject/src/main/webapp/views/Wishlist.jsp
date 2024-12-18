<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Wishlist.css">
    <title>Wishlist</title>
</head>

<body>
    <!-- Include header and footer sections using the custom include mechanism -->
    <div data-include="/Tr-sor-de-Levure-views/head-foot/header_fotter/head_2.html"></div>

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
                <button type="button" onclick="location.href='/shopping.jsp'">Continue Shopping</button>
            </div>
        </form>
    </div>

    <!-- Include footer section -->
    <div data-include="/Tr-sor-de-Levure-views/head-foot/header_fotter/ruou.html"></div>

    <script>
        function includeHTML() {
            const elements = document.querySelectorAll("[data-include]");
            elements.forEach(async (el) => {
                const file = el.getAttribute("data-include");
                if (file) {
                    try {
                        const response = await fetch(file);
                        if (response.ok) {
                            const html = await response.text();
                            el.innerHTML = html;
                        } else {
                            console.error(`Không thể tải file: ${file}. Lỗi: ${response.status}`);
                            el.innerHTML = `Không tìm thấy nội dung: ${file}`;
                        }
                    } catch (error) {
                        console.error(`Lỗi khi tải file: ${file}`, error);
                        el.innerHTML = "Đã xảy ra lỗi khi tải nội dung.";
                    }
                }
            });
        }

        document.addEventListener("DOMContentLoaded", includeHTML);
    </script>
</body>

</html>
