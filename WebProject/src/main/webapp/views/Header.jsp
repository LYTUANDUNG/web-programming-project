<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.0/css/all.min.css"
        integrity="sha512-9xKTRVabjVeZmc+GUW8GgSmcREDunMM+Dt/GrzchfN8tkwHizc5RP4Ok/MXFFy5rIjJjzhndFScTceq5e6GvVQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Header.css">
</head>

<body>
    <nav class="custom-navbar">
        <!-- CHỮ SHOP BÊN TRÁI -->
        <div class="navbar-brand-container">
            <a class="navbar-brand" href="home.jsp">Stationery</a>
        </div>

        <!-- MENU BÊN PHẢI -->
        <div class="menu-right">
            <!-- MENU CHÍNH -->
            <ul class="custom-navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shop.jsp">Shop</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="services.jsp">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="blog.jsp">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
            </ul>

            <!-- ICON -->
            <ul class="custom-navbar-cta">
                <li>
                    <div class="search-container">
                        <input type="text" class="search-input" placeholder="Search...">
                        <i class="fa-solid fa-magnifying-glass search-icon"></i>
                    </div>
                </li>
                <li><a class="nav-link" href="user.jsp"><i class="fa-solid fa-user"></i></a></li>
                <li><a class="nav-link" href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
            </ul>
        </div>
    </nav>

    <script src="${pageContext.request.contextPath}/js/Header.js"></script>
</body>

</html>
