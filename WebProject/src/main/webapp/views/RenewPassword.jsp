<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Renew Password Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/EditStyle.css">

</head>
<body>
	<div class="form-container">
		<h1>
			<span class="underline">Re</span>new Information
		</h1>
		<form action="${pageContext.request.contextPath}/SolveRenewPassword"
			method="post">
			<div class="form-group">
				<label for="name">Name</label> <input type="text" id="name"
					name="name" placeholder="Enter your name" />
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					name="password" id="password" placeholder="Enter your password" />
			</div>
			<div class="button-container">
				<button type="submit" class="btn update-btn">Update</button>
				<button type="button" class="btn exit-btn">Exit</button>
			</div>
		</form>
	</div>
</body>
</html>
