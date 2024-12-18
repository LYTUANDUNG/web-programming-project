<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ConfirmStyle.css">
</head>
<body>
	<div id="father-wrapper">
		<div class="wrapper">
			<h2>Get Password Through Email</h2>
			<form
				action="${pageContext.request.contextPath}/SolveConfirmPassword"
				method="post">
				<div class="input-box">
					<input name="userCode" id="forgot_text" type="text"
						placeholder="Enter your code" required
						style="height: 38.4px; line-height: 38.4px; box-sizing: border-box;">

				</div>
				<div class="flex under_10px">
					<div class="input-box button">
						<input type="Submit" value="Confirm">
					</div>
					<a
						onclick="location.href='${pageContext.request.contextPath}/SolveBackToForgot'">Back
						to Forgot </a>
				</div>
			</form>
			<div class="text"></div>
		</div>
	</div>
	<c:if test="${not empty message}">
		<div class="alert ${type}" id="alertBox">
			<span class="closebtn"
				onclick="this.parentElement.style.display='none';">&times;</span>
			${message}
		</div>
	</c:if>

</body>
</html>