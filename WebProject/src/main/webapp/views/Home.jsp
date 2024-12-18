<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<title><f:message bundle="${bundle}" key="home.title" /></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Home.css">
	   <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Header.css">
<script src="${pageContext.request.contextPath}/js/Header.js"></script>
<script src="${pageContext.request.contextPath}/js/Home.js"></script>
</head>
<body>

	<div id="header-container">
		<jsp:include page="Header.jsp" />
	</div>


	<div class="hero">
		<div class="container_title">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
						<h1>
							<f:message bundle="${bundle}" key="home.welcome" />
						</h1>
						<p class="mb-4">
							<f:message bundle="${bundle}" key="home.description" />
						</p>
						<p>
							<a href="#" class="btn btn-secondary me-2"><f:message bundle="${bundle}"
									key="home.shopNow" /></a> <a href="#"
								class="btn btn-white-outline"><f:message bundle="${bundle}" 
									key="home.explore" /></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="product-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-12 col-lg-3 mb-5 mb-lg-0 text-section">
					<h2 class="mb-4 section-title">
						<f:message bundle="${bundle}" key="home.productTitle" />
					</h2>
					<p class="mb-4">
						<f:message bundle="${bundle}" key="home.productDescription" />
					</p>
				</div>

				<!-- Lặp qua danh sách sản phẩm -->
				<!-- <c:forEach var="product" items="${products}">
	                    <div class="col-md-4 col-lg-3 mb-5 mb-md-0">
	                        <a class="product-item" href="cart.jsp">
	                            <div class="product-img-wrapper">
	                                <img src="${product.image}" class="img-fluid product-thumbnail" alt="${product.name}">
	                                <h3 class="product-title">${product.name}</h3>
	                                <strong class="product-price">${product.price}</strong>
	                                <div class="product-icon">
	                                    <i class="fa-solid fa-plus"></i>
	                                </div>
	                            </div>
	                        </a>
	                    </div>
	                </c:forEach>-->
			</div>
		</div>
	</div>

	<div class="why-choose-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h2 class="section-title">
						<f:message bundle="${bundle}" key="home.whyChooseUsTitle" />
					</h2>
					<p>
						<f:message bundle="${bundle}" key="home.whyChooseUsDescription" />
					</p>
					<div class="row my-5">
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-car-side"></i>
								</div>
								<h3>
									<f:message bundle="${bundle}" key="home.fastShippingTitle" />
								</h3>
								<p>
									<f:message bundle="${bundle}" key="home.fastShippingDescription" />
								</p>
							</div>
						</div>
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-bag-shopping"></i>
								</div>
								<h3>
									<f:message bundle="${bundle}" key="home.easyShoppingTitle" />
								</h3>
								<p>
									<f:message bundle="${bundle}" key="home.easyShoppingDescription" />
								</p>
							</div>
						</div>
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-headset"></i>
								</div>
								<h3>
									<f:message bundle="${bundle}" key="home.supportTitle" />
								</h3>
								<p>
									<f:message bundle="${bundle}" key="home.supportDescription" />
								</p>
							</div>
						</div>
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-arrow-right-arrow-left"></i>
								</div>
								<h3>
									<f:message bundle="${bundle}" key="home.hassleFreeReturnsTitle" />
								</h3>
								<p>
									<f:message bundle="${bundle}" key="home.hassleFreeReturnsDescription" />
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="img-wrap">
						<img
							src="https://img.freepik.com/free-photo/school-tool-bucket-isolated-white-background_1203-3652.jpg"
							alt="Image" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="popular-product">
		<div class="container">
			<div class="row">
				<!-- <c:forEach var="product" items="${popularProducts}">
	                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
	                        <div class="product-item-sm d-flex">
	                            <div class="thumbnail">
	                                <img src="${product.image}" alt="${product.name}" class="img-fluid">
	                            </div>
	                            <div class="pt-3">
	                                <h3>${product.name}</h3>
	                                <p>${product.description}</p>
	                                <p><a href="#">Read More</a></p>
	                            </div>
	                        </div>
	                    </div>
	                </c:forEach>-->
			</div>
		</div>
	</div>

	<div class="testimonial-section">
		<h2 class="testimonial-title">
			<f:message bundle="${bundle}" key="home.testimonialsTitle" />
		</h2>
		<div class="testimonial-slider-container">
			<div class="testimonial-slider">
				<c:forEach var="testimonial" items="${testimonials}">
					<div class="testimonial-item">
						<div class="testimonial-avatar">
							<img src="${testimonial.avatar}" alt="Client Avatar">
						</div>
						<p class="testimonial-quote">"${testimonial.quote}"</p>
						<p class="testimonial-name">${testimonial.name}</p>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<div id="footer-container">
		<jsp:include page="Footer.jsp" />
	</div>

</body>
</html>
