<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/LoginStyle.css">
</head>
<body>
	<!-- notification -->
	<c:if test="${not empty message}">
		<div class="alert ${type}" id="alertBox">
			<span class="closebtn"
				onclick="this.parentElement.style.display='none';">&times;</span>
			${message}
		</div>
	</c:if>


	<div class="container">
		<div class="login-container">
			<div class="form-container">
				<h2>
					Login to <span class="highlight">Sationery</span>
				</h2>
				<p>Lorem ipsum dolor sit amet elit. Sapiente sit aut eos
					consectetur adipisicing.</p>
				<form action="${pageContext.request.contextPath}/SolveLogin">
					<label for="username">Username</label>
					 <input class="inputt" type="text" id="username" placeholder="User name" name="userName" required>
						 <label for="password">Password</label> 
						 <input class="inputt" type="password" id="password" placeholder="Your Password" name="password" required>

					<div class="options">
						<div id="flex_rememberMe">
							<input  type="checkbox"> <label>Remember</label><span>me</span>
						</div>
						<a href="${pageContext.request.contextPath}/views/Forgot.jsp" class="forgot-password">Forgot Password?</a>
					</div>

					<button type="submit" class="btn">Log In</button>
				</form>
			</div>
			<div class="image-container">
				<img
					src="https://cb.scene7.com/is/image/Crate/cb_mSC_20241101_Furniture_Chairs?bfc=on&wid=500&qlt=80&op_sharpen=1"
					alt="Example Image" />

			</div>
		</div>
	</div>
</body>
</html>