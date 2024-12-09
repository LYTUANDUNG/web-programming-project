<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/VerifyStyle.css">
<meta charset="UTF-8">
<title>Veryfy Page</title>
</head>
<body>
	<div id="headingContainer">
		<h3 id="textLogo">Stationery</h3>
	</div>

	<!-- body -->
	<div id="wrapper">
		<div id="containerVerifyBody">
			<div id="HeadingAndLink">
				<h4>Confirmation</h4>
				<p class="underlineWord text_hover">Back to Sign-in</p>
			</div>
			<div style="height: 22px"></div>
			<p>Note: Make sure you enter the correct code we provided</p>
			<form>
				<div>
					<input class="inputBox" placeholder=" Email" type="text"><br>
					<br>
				</div>
				<input class="btnVerify" class="inputBox" type="button"
					value="Confirm !">
			</form>
		</div>
	</div>


</body>
</html>