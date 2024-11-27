<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Home.css">
<script src="${pageContext.request.contextPath}/js/Header.js"></script>
<script src="${pageContext.request.contextPath}/js/Home.js"></script>
</head>
<body>

	<div id="header-container">
		<%@ include file="Header.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>
	<!-- Include Script -->


	<div class="hero">
		<div class="container_title">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
						<h1>Home</h1>
						<p class="mb-4">Essentials for Every Creative Journey.</p>
						<p>
							<a href="#" class="btn btn-secondary me-2">Shop Now</a> <a
								href="#" class="btn btn-white-outline">Explore</a>
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
					<h2 class="mb-4 section-title">Crafted with excellent
						material.</h2>
					<p class="mb-4">Donec vitae odio quis nisl dapibus malesuada.
						Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor
						tempor tristique.</p>
				</div>
				<div class="col-md-4 col-lg-3 mb-5 mb-md-0">
					<a class="product-item" href="cart.jsp">
						<div class="product-img-wrapper">
							<img
								src="https://e7.pngegg.com/pngimages/216/146/png-clipart-paper-stationery-office-supplies-stationary-pencil-service-thumbnail.png"
								class="img-fluid product-thumbnail">
							<h3 class="product-title">Nordic Chair</h3>
							<strong class="product-price">$50.00</strong>
							<div class="product-icon">
								<i class="fa-solid fa-plus"></i>
							</div>
						</div>
					</a>
				</div>
				<!-- Tiếp tục các sản phẩm khác -->
				<div class="col-md-4 col-lg-3 mb-5 mb-md-0">
					<a class="product-item" href="cart.jsp">
						<div class="product-img-wrapper">
							<img
								src="https://e7.pngegg.com/pngimages/216/146/png-clipart-paper-stationery-office-supplies-stationary-pencil-service-thumbnail.png"
								class="img-fluid product-thumbnail">
							<h3 class="product-title">Nordic Chair</h3>
							<strong class="product-price">$50.00</strong>
							<div class="product-icon">
								<i class="fa-solid fa-plus"></i>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-lg-3 mb-5 mb-md-0">
					<a class="product-item" href="cart.jsp">
						<div class="product-img-wrapper">
							<img
								src="https://e7.pngegg.com/pngimages/216/146/png-clipart-paper-stationery-office-supplies-stationary-pencil-service-thumbnail.png"
								class="img-fluid product-thumbnail">
							<h3 class="product-title">Nordic Chair</h3>
							<strong class="product-price">$50.00</strong>
							<div class="product-icon">
								<i class="fa-solid fa-plus"></i>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="why-choose-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h2 class="section-title">Why Choose Us</h2>
					<p>Your Trusted Stationery Partner – Where Quality Meets
						Convenience.</p>
					<div class="row my-5">
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-car-side"></i>
								</div>
								<h3>Fast &amp; Free Shipping</h3>
								<p>Get Your Stationery in No Time – Fast, Free, and
									Reliable!</p>
							</div>
						</div>
						<!-- Các ô khác -->
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-bag-shopping"></i>
								</div>
								<h3>Easy to Shop</h3>
								<p>Simplify Your Stationery Shopping – Everything You Need
									in One Place.</p>
							</div>
						</div>
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-headset"></i>
								</div>
								<h3>24/7 Support</h3>
								<p>Always Here for Your Stationery Needs – Day or Night.</p>
							</div>
						</div>
						<div class="col-6">
							<div class="feature">
								<div class="icon">
									<i class="fa-solid fa-arrow-right-arrow-left"></i>
								</div>
								<h3>Hassle Free Returns</h3>
								<p>Hassle-Free Returns for Defective Stationery – Shop with
									Confidence.</p>
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

				<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
					<div class="product-item-sm d-flex">
						<div class="thumbnail">
							<img
								src="https://png.pngtree.com/png-vector/20220706/ourmid/pngtree-office-stationery-clipart-design-png-image_5720204.png"
								alt="Image" class="img-fluid">
						</div>
						<div class="pt-3">
							<h3>Nordic Chair</h3>
							<p>Donec facilisis quam ut purus rutrum lobortis. Donec vitae
								odio</p>
							<p>
								<a href="#">Read More</a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
					<div class="product-item-sm d-flex">
						<div class="thumbnail">
							<img
								src="https://png.pngtree.com/png-vector/20220706/ourmid/pngtree-office-stationery-clipart-design-png-image_5720204.png"
								alt="Image" class="img-fluid">
						</div>
						<div class="pt-3">
							<h3>Kruzo Aero Chair</h3>
							<p>Donec facilisis quam ut purus rutrum lobortis. Donec vitae
								odio</p>
							<p>
								<a href="#">Read More</a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
					<div class="product-item-sm d-flex">
						<div class="thumbnail">
							<img
								src="https://png.pngtree.com/png-vector/20220706/ourmid/pngtree-office-stationery-clipart-design-png-image_5720204.png"
								alt="Image" class="img-fluid">
						</div>
						<div class="pt-3">
							<h3>Ergonomic Chair</h3>
							<p>Donec facilisis quam ut purus rutrum lobortis. Donec vitae
								odio</p>
							<p>
								<a href="#">Read More</a>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="testimonial-section">
		<h2 class="testimonial-title">What Our Clients Say</h2>
		<div class="testimonial-slider-container">
			<div class="testimonial-slider">
				<div class="testimonial-item">
					<div class="testimonial-avatar">
						<img src="path-to-avatar1.jpg" alt="Client 1">
					</div>
					<p class="testimonial-quote">"This product is amazing! I highly
						recommend it!"</p>
					<p class="testimonial-name">Client 1</p>
				</div>
				<div class="testimonial-item">
					<div class="testimonial-avatar">
						<img src="path-to-avatar2.jpg" alt="Client 2">
					</div>
					<p class="testimonial-quote">"Excellent service and fast
						delivery!"</p>
					<p class="testimonial-name">Client 2</p>
				</div>
				<div class="testimonial-item">
					<div class="testimonial-avatar">
						<img src="path-to-avatar3.jpg" alt="Client 3">
					</div>
					<p class="testimonial-quote">"Very satisfied with my purchase,
						will definitely come back!"</p>
					<p class="testimonial-name">Client 3</p>
				</div>
			</div>
		</div>
		<div class="testimonial-dots">
			<!-- Dots sẽ được tự động thêm bởi JS -->
		</div>
	</div>
	<div id="footer-container">
		<%@ include file="Footer.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>

</body>
</html>
