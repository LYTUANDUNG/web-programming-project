<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/RegisterStyle.css">
</head>
<body>
	<div class="wrapper">
		<h2>Registration</h2>
		<form action="#">
			<div class="input-box">
				<input type="text" placeholder="Enter your name" required>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Enter your email" required>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Phone number" required>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Confirm password" required>
			</div>
			<div class="policy">
				<input type="checkbox">
				<h3>I accept all terms & condition</h3>
			</div>
			<div class="input-box button">
				<input type="Submit" value="Register Now">
			</div>
			<div class="text">
				<h3>
					Already have an account? <a href="#">Login now</a>
				</h3>
			</div>
		</form>
	</div>
</body>
</html>