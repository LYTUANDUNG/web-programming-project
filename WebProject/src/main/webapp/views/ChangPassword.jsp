<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/RegisterStyle.css">
</head>
<body>
		<div class="wrapper">
		<h2>Change Password</h2>
		<form action="#">
			<div class="input-box">
				<input type="text" placeholder="Old Password" required>
			</div>
			<div class="input-box">
				<input type="text" placeholder="New Password" required>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Confirm new password" required>
			</div>
			<div class="input-box button">
				<input type="Submit" value="Confirm">
			</div>
		</form>
	</div>
</body>
</html>