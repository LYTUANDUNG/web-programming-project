<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/VerifyStyle.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

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