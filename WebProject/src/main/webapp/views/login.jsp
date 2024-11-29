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
	<div class="container">
		<div class="login-container">
			<div class="form-container">
				<h2>
					Login to <span class="highlight">Sationery</span>
				</h2>
				<p>Lorem ipsum dolor sit amet elit. Sapiente sit aut eos
					consectetur adipisicing.</p>
				<form>
					<label for="username">Username</label> <input type="email"
						id="username" placeholder="your-email@gmail.com" required>

					<label for="password">Password</label> <input type="password"
						id="password" placeholder="Your Password" required>

					<div class="options">
						<div id="flex_rememberMe">
							<input type="checkbox"> <label>Remember</label><span>me</span>
						</div>
						<a href="#" class="forgot-password">Forgot Password?</a>
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