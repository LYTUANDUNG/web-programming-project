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
		<form action="${pageContext.request.contextPath}/SolveForgotPassword">
			<div class="input-box">
				<input name="userMail" id="forgot_text" type="text" placeholder="Enter your Email"
					required
					style="height: 38.4px; line-height: 38.4px; box-sizing: border-box;">

			</div>
			<div class="flex under_10px">
				<div class="input-box button">
					<input type="Submit" value="Send">
				</div>
				<div class="text">
					<a href="${pageContext.request.contextPath}/views/login.jsp">Back
						to Login</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>