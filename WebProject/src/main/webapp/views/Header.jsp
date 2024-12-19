<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<f:setBundle basename="lang.lang" var="bundle" scope="session" />
<f:setLocale
	value="${sessionScope.lang != null ? sessionScope.lang : 'en_US'}"
	scope="session" />
<!DOCTYPE html>
<html
	lang="${sessionScope.lang != null ? sessionScope.lang.split('_')[0] : 'en'}">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><f:message bundle="${bundle}" key="header.title" /></title>
<!-- Font Awesome for Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.0/css/all.min.css"
	integrity="sha512-9xKTRVabjVeZmc+GUW8GgSmcREDunMM+Dt/GrzchfN8tkwHizc5RP4Ok/MXFFy5rIjJjzhndFScTceq5e6GvVQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Link to your custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Header.css">
</head>

<body>
	<nav class="custom-navbar">
		<!-- CHỮ SHOP BÊN TRÁI -->
		<div class="navbar-brand-container">
			<a class="navbar-brand" href="Home.jsp"><f:message
					bundle="${bundle}" key="header.brand" /></a>
		</div>

		<!-- MENU BÊN PHẢI -->
		<div class="menu-right">
			<!-- MENU CHÍNH -->
			<ul class="custom-navbar-nav">
				<li class="nav-item"><a class="nav-link" href="Home.jsp"><f:message
							bundle="${bundle}" key="header.home" /></a></li>
				<li class="nav-item"><a class="nav-link" href="Shop.jsp"><f:message
							bundle="${bundle}" key="header.shop" /></a></li>
				<li class="nav-item"><a class="nav-link" href="Sale.jsp"><f:message
							bundle="${bundle}" key="header.about" /></a></li>
				<li class="nav-item"><a class="nav-link" href="AboutUs.jsp"><f:message
							bundle="${bundle}" key="header.services" /></a></li>
				<li class="nav-item"><a class="nav-link" href="blog.jsp"><f:message
							bundle="${bundle}" key="header.blog" /></a></li>
				<li class="nav-item"><a class="nav-link" href="Contact.jsp"><f:message
							bundle="${bundle}" key="header.contact" /></a></li>
			</ul>

			<!-- CTA (Call to action) -->
			<ul class="custom-navbar-cta">
				<li class="nav-item"><f:message bundle="${bundle}"
						key="header.welcome" /> , ${sessionScope.adminName}</li>

				<li><a class="nav-link" href="Cart.jsp"><i
						class="fa-solid fa-cart-shopping"></i></a></li>
				<li><a class="nav-link" href="Wishlist.jsp"><i
						class="fa-solid fa-heart"></i></a></li>

				<li class="dropdown"><a class="nav-link dropdown-toggle"
					href="#" id="userDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> <i class="fa-solid fa-user"></i> 
				</a>
					<ul class="dropdown-menu" aria-labelledby="userDropdown">
						<li><a class="dropdown-item" href="Edit.jsp"><f:message
									bundle="${bundle}" key="header.edit" /></a></li>
						<li><a class="dropdown-item" href="LogoutServlet"><f:message
									bundle="${bundle}" key="header.logout" /></a></li>
					</ul></li>

				<!-- Language Dropdown -->
				<li class="dropdown"><a class="nav-link dropdown-toggle"
					href="#" id="languageDropdown" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="fa-solid fa-globe"></i>
				</a>
					<ul class="dropdown-menu" aria-labelledby="languageDropdown">
						<li><a class="dropdown-item" href="HeaderServlet?lang=vi_VN"><f:message
									bundle="${bundle}" key="header.vietnam" /></a></li>
						<li><a class="dropdown-item" href="HeaderServlet?lang=en_US"><f:message
									bundle="${bundle}" key="header.english" /></a></li>
					</ul></li>
			</ul>
		</div>
	</nav>

	<!-- Link to custom JS -->
	<script src="${pageContext.request.contextPath}/js/Header.js"></script>
</body>

</html>
