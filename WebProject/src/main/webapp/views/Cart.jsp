<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Cart</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/CartStyle.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/btn.css">
</head>
<body>
	<div id="header-container">
		<%@ include file="Header.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>
	<div class="cart-container">
		<table class="cart-table">
			<thead>
				<tr>
					<th>Image</th>
					<th>Product</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img src="product1.jpg" alt="Product 1"></td>
					<td>Product 1</td>
					<td>$49.00</td>
					<td>
						<div class="quantity-controls">
							<button>-</button>
							<input type="number" value="1" min="1">
							<button>+</button>
						</div>
					</td>
					<td>$49.00</td>
					<td><button class="remove-btn">x</button></td>
				</tr>
				<tr>
					<td><img src="product2.jpg" alt="Product 2"></td>
					<td>Product 2</td>
					<td>$49.00</td>
					<td>
						<div class="quantity-controls">
							<button>-</button>
							<input type="number" value="1" min="1">
							<button>+</button>
						</div>
					</td>
					<td>$49.00</td>
					<td><button class="remove-btn">x</button></td>
				</tr>
			</tbody>
		</table>

		<div class="cart-actions">
			<button class="btn update-cart">Update Cart</button>
			<button class="btn continue-shopping">Continue Shopping</button>
		</div>
		<div class="checkoutArea">
			<div class="coupon-section">
				<h3>Coupon</h3>
				<p>Enter your coupon code if you have one.</p>
				<input style="border-radius: 10px" type="text"
					placeholder="Coupon Code">
				<button class="btn apply-coupon">Apply Coupon</button>
			</div>

			<div class="cart-totals">
				<h3>Cart Totals</h3>
				<div class="totals-row">
					<span>Subtotal:</span> <span>$230.00</span>
				</div>
				<div class="totals-row">
					<span>Total:</span> <span>$230.00</span>
				</div>
				<div>
					<button class="btn checkout-btn">Proceed To Checkout</button>
				</div>
			</div>
		</div>
	</div>
	<div style="padding: 100px"></div>
	<div id="footer-container">
		<%@ include file="Footer.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>
</body>
</html>
