

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/UserStyle.css">
</head>
<body>
	

	<div id="header-container">
		<%@ include file="Header.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>


	<!-- Container for user profile -->
	<div class="profile-container">
		<div class="user-info">
			<!-- User image -->
			<div class="user-image">
				<img src="https://via.placeholder.com/150" alt="User Image">
			</div>
			<!-- User information -->
			<div class="user-details">
				<h2>User Information</h2>
				<table class="table-infor">
					<tr>
						<td>
							<p>
								<strong>ID:</strong> 12345
							</p>
						</td>
						<td>
							<p>
								<strong>Name:</strong> John Doe
							</p>
						</td>
						<td>
							<p>
								<strong>Phone:</strong> +123 456 789
							</p>
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							<p>
								<strong>Email:</strong> johndoe@example.com
							</p>
						</td>
						<td>
							<p>
								<strong>Date of Birth:</strong> 01-01-1990
							</p>
						</td>
						<td>
							<p>
								<strong>Address:</strong> 123 Main St, Anytown, USA
							</p>
						</td>
					</tr>

				</table>



			</div>
			<!-- Options Section -->
			<div class="options">
				<button class="btn" onclick="location.href='History.jsp'">Order
					History</button>
				<button class="btn" onclick="location.href='Edit.jsp'">Edit
					Profile</button>
			</div>

		</div>
	</div>

</body>
</html>
