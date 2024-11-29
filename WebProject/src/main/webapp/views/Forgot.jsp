<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ForgotStyle.css">
</head>
<body>
	<div class="wrapper">
		<h2>Get Password Through Email</h2>
		<form action="#">
			<div class="input-box">
				<input type="text" placeholder="Enter your Email" required>
			</div>
			<div class="flex under_10px">
				<div class="input-box button">
					<input type="Submit" value="Send">
				</div>
				<div class="text">
					<a href="#">Back to Login</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>