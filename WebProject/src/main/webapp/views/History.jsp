<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>History Page</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<!-- Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/HistoryStyle.css">

<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">

</head>
<body class="historyPage">

	<c:if test="${not empty message}">
		<div class="alert ${type}" id="alertBox">
			<span class="closebtn"
				onclick="this.parentElement.style.display='none';">&times;</span>
			${message}
		</div>
	</c:if>



	<div class="header">
		<div>
			<h3>Stationery</h3>
		</div>
		<div>
			<a href="/home">Back to Home</a> <a href="/cart">Go to Cart</a>
		</div>
	</div>

	<div class="container mt-5">
		<h3>Transaction List</h3>
		<p>
			User ID:<span class="user-id">13609.</span>
		</p>
		<p>
			User Name:<span class="user-name"> LE PHI HUNG</span>
		</p>
		<p>
			<strong>Total Transactions: </strong><span>5</span>
		</p>

		<div class="list-group">
			<!-- Giao dịch 1 -->
			<div class="transaction">
				<div class="transaction-header" data-id="1">
					<span>Transaction ID: 1001</span>
				</div>
				<div class="transaction-details">
					<p>
						<strong>Transaction Time:</strong> 2024-12-09 10:00 AM
					</p>
					<p>
						<strong>Total Amount:</strong> $150
					</p>
					<p>
						<strong>Status:</strong> Completed
					</p>
				</div>
				<div class="items-list" id="items-list-1">
					<div class="item">
						<div>
							ID Product:<span>12A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Black Board</span>
						</div>
						<div class="detail">
							<span class="item-price">$200</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 2</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>

					<div class="item">
						<div>
							ID Product:<span>13A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Ruler</span>
						</div>
						<div class="detail">
							<span class="item-price">$100</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 1</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
				</div>
				<div id="more-infor" data-id="1">
					<hr class="divider-line">
					<div class="placeholder-arrow">
						<span>&#x25BC;</span>
					</div>
				</div>
			</div>

			<!-- Giao dịch 2 -->
			<div class="transaction">
				<div class="transaction-header">
					<span>Transaction ID: 1002</span>
				</div>
				<div class="transaction-details">
					<p>
						<strong>Transaction Time:</strong> 2024-12-09 12:30 PM
					</p>
					<p>
						<strong>Total Amount:</strong> $180
					</p>
					<p>
						<strong>Status:</strong> Pending
					</p>



				</div>
				<div class="items-list" id="items-list-2">
					<div class="item">
						<div>
							ID Product:<span>14A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Black Board</span>
						</div>
						<div class="detail">
							<span class="item-price">$120</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 1</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>

					</div>
					<div class="item">
						<div>
							ID Product:<span>15A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Chalk</span>
						</div>
						<div class="detail">
							<span class="item-price">$200</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 1</span>
						</div>
						<p>

							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>

					</div>
				</div>
				<div id="more-infor" data-id="2">
					<hr class="divider-line">
					<div class="placeholder-arrow">
						<span>&#x25BC;</span>
					</div>
				</div>
			</div>

			<!-- Giao dịch 3 -->
			<div class="transaction">
				<div class="transaction-header" data-id="3">
					<span>Transaction ID: 1003</span>
				</div>
				<div class="transaction-details">
					<p>
						<strong>Transaction Time:</strong> 2024-12-09 02:00 PM
					</p>
					<p>
						<strong>Total Amount:</strong> $220
					</p>
					<p>
						<strong>Status:</strong> Completed
					</p>
				</div>
				<div class="items-list" id="items-list-3">
					<div class="item">
						<div>
							ID Product:<span>16A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Swivel Chair</span>
						</div>
						<div class="detail">
							<span class="item-price">$500</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 12</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>

					</div>
					<div class="item">
						<div>
							ID Product:<span>17A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Table</span>
						</div>
						<div class="detail">
							<span class="item-price">$100</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 5</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>

					</div>
				</div>
				<div id="more-infor" data-id="3">
					<hr class="divider-line">
					<div class="placeholder-arrow">
						<span>&#x25BC;</span>
					</div>
				</div>
			</div>

			<!-- Giao dịch 4 -->
			<div class="transaction">
				<div class="transaction-header" data-id="4">
					<span>Transaction ID: 1004</span>
				</div>
				<div class="transaction-details">
					<p>
						<strong>Transaction Time:</strong> 2024-12-09 04:30 PM
					</p>
					<p>
						<strong>Total Amount:</strong> $210
					</p>
					<p>
						<strong>Status:</strong> Canceled
					</p>
				</div>
				<div class="items-list" id="items-list-4">
					<div class="item">
						<div>
							ID Product:<span>12A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Pen</span>
						</div>
						<div class="detail">
							<span class="item-price">$100</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 11</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>

					</div>
					<div class="item">
						<div>
							ID Product:<span>14A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Black Board</span>
						</div>
						<div class="detail">
							<span class="item-price">$500</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 12</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
				</div>
				<div id="more-infor" data-id="4">
					<hr class="divider-line">
					<div class="placeholder-arrow">
						<span>&#x25BC;</span>
					</div>
				</div>
			</div>

			<!-- Giao dịch 5 (5 sản phẩm) -->
			<div class="transaction">
				<div class="transaction-header" data-id="5">
					<span>Transaction ID: 1005</span>
				</div>
				<div class="transaction-details">
					<p>
						<strong>Transaction Time:</strong> 2024-12-09 06:00 PM
					</p>
					<p>
						<strong>Total Amount:</strong> $250
					</p>
					<p>
						<strong>Status:</strong> Pending
					</p>
				</div>
				<div class="items-list" id="items-list-5">
					<div class="item">
						<div>
							ID Product:<span>16A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Swivel Chair</span>
						</div>
						<div class="detail">
							<span class="item-price">$500</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 12</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
					<div class="item">
						<div>
							ID Product:<span>13A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Ruler</span>
						</div>
						<div class="detail">
							<span class="item-price">$100</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 1</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
					<div class="item">
						<div>
							ID Product:<span>12A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Pen</span>
						</div>
						<div class="detail">
							<span class="item-price">$200</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 2</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
					<div class="item">
						<div>
							ID Product:<span>15A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Chalk</span>
						</div>
						<div class="detail">
							<span class="item-price">$200</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 1</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
					<div class="item">
						<div>
							ID Product:<span>17A7</span>
						</div>
						<div class="detail">
							<span class="item-name">Table</span>
						</div>
						<div class="detail">
							<span class="item-price">$100</span>
						</div>
						<div class="detail">
							<span class="item-quantity">Quantity: 5</span>
						</div>
						<p>
							<button class="btn" onclick="location.href='ProductReview.jsp'">
								Feed Back</button>
						</p>
					</div>
				</div>
				<div id="more-infor" data-id="5">
					<hr class="divider-line">
					<div class="placeholder-arrow">
						<span>&#x25BC;</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- JavaScript -->
	<script src="${pageContext.request.contextPath}/js/History.js">
		
	</script>
</body>
</html>