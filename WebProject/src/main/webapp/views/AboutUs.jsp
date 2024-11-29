<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/AboutUsStyle.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="header-container">
		<%@ include file="Header.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>
	<section class="about-us">
		<div class="about">
			<img
				src="https://us.123rf.com/450wm/emojiimage/emojiimage2302/emojiimage230201051/198936077-petit-personnage-de-femme-assis-sur-une-%C3%A9norme-illustration-vectorielle-de-cadran-d-horloge-bleu.jpg?ver=6"
				class="pic" />
			<div class="text">
				<h2>About Us</h2>
				<h5>
					Front-end Developer & <span>Designer</span>
				</h5>
				<p>Welcome to Office Essentials, your trusted partner for all
					things office-related! Since our founding in [YEAR], we’ve been
					dedicated to providing high-quality office supplies that make your
					workplace more efficient, productive, and enjoyable. Our team is
					passionate about delivering products that meet the diverse needs of
					businesses, schools, and individuals. Whether you’re looking for
					stationery, ergonomic furniture, or cutting-edge office equipment,
					we’ve got you covered.</p>
				<p>Our Mission To empower businesses and individuals by offering
					innovative, reliable, and affordable office solutions that enhance
					productivity and creativity.</p>
				<div class="data">
					<a href="#" class="hire">Contact us</a>
				</div>
			</div>
		</div>
	</section>
	<div id="footer-container">
		<%@ include file="Footer.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>
</body>
</html>