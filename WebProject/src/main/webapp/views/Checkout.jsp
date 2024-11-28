<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Checkout.css">
<script src="${pageContext.request.contextPath}/js/Home.js"></script>
<script src="${pageContext.request.contextPath}/js/Checkout.js"></script>
<body>

	<div id="header-container">
		<%@ include file="Header.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div>

	<div class="hero">
		<div class="container_title">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
						<h1>Shop</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-12">
					<div class="border p-4 rounded" role="alert">
						Returning customer? <a href="#">Click here</a> to login
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-5 mb-md-0">
					<h2 class="h3 mb-3 text-black">Billing Details</h2>
					<div class="p-3 p-lg-5 border bg-white">
						<div class="form-group">
							<label for="c_country" class="text-black">Country <span
								class="text-danger">*</span></label> <select id="c_country"
								class="form-control">
								<option value="1">Select a country</option>
								<option value="2">Bangladesh</option>
								<option value="3">Algeria</option>
								<option value="4">Afghanistan</option>
								<option value="5">Ghana</option>
								<option value="6">Albania</option>
								<option value="7">Bahrain</option>
								<option value="8">Colombia</option>
								<option value="9">Dominican Republic</option>
							</select>
						</div>

						<div class="form-group row">
							<div class="col-md-6">
								<label for="c_fname" class="text-black">First Name <span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="c_fname" name="c_fname">
							</div>
							<div class="col-md-6">
								<label for="c_lname" class="text-black">Last Name <span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="c_lname" name="c_lname">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">Company
									Name </label> <input type="text" class="form-control"
									id="c_companyname" name="c_companyname">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_address" class="text-black">Address <span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="c_address" name="c_address"
									placeholder="Street address">
							</div>
						</div>

						<div class="form-group mt-3">
							<input type="text" class="form-control"
								placeholder="Apartment, suite, unit etc. (optional)">
						</div>

						<div class="form-group row">
							<div class="col-md-6">
								<label for="c_state_country" class="text-black">State /
									Country <span class="text-danger">*</span>
								</label> <input type="text" class="form-control" id="c_state_country"
									name="c_state_country">
							</div>
							<div class="col-md-6">
								<label for="c_postal_zip" class="text-black">Posta / Zip
									<span class="text-danger">*</span>
								</label> <input type="text" class="form-control" id="c_postal_zip"
									name="c_postal_zip">
							</div>
						</div>

						<div class="form-group row mb-5">
							<div class="col-md-6">
								<label for="c_email_address" class="text-black">Email
									Address <span class="text-danger">*</span>
								</label> <input type="text" class="form-control" id="c_email_address"
									name="c_email_address">
							</div>
							<div class="col-md-6">
								<label for="c_phone" class="text-black">Phone <span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="c_phone" name="c_phone"
									placeholder="Phone Number">
							</div>
						</div>

						<!-- Create an account Section -->
						<div class="form-group">
							<label for="c_create_account" class="text-black collapsed"
								data-bs-toggle="collapse" href="#create_an_account"
								role="button" aria-expanded="false"
								aria-controls="create_an_account"> <input
								type="checkbox" value="1" id="c_create_account"> Create
								an account?
							</label>
							<div class="collapse" id="create_an_account">
								<div class="py-2 mb-4">
									<p class="mb-3">Create an account by entering the
										information below. If you are a returning customer please
										login at the top of the page.</p>
									<div class="form-group">
										<label for="c_account_password" class="text-black">Account
											Password</label> <input type="password" class="form-control"
											id="c_account_password" name="c_account_password"
											placeholder="">
									</div>
								</div>
							</div>
						</div>

						<!-- Ship to a different address Section -->
						<div class="form-group">
							<label for="c_ship_different_address"
								class="text-black collapsed" data-bs-toggle="collapse"
								href="#ship_different_address" role="button"
								aria-expanded="false" aria-controls="ship_different_address">
								<input type="checkbox" value="1" id="c_ship_different_address">
								Ship To A Different Address?
							</label>
							<div class="collapse" id="ship_different_address">
								<div class="py-2">
									<!-- Shipping Address Fields -->
									<div class="form-group">
										<label for="c_diff_country" class="text-black">Country
											<span class="text-danger">*</span>
										</label> <select id="c_diff_country" class="form-control">
											<option value="1">Select a country</option>
											<option value="2">Bangladesh</option>
											<option value="3">Algeria</option>
											<option value="4">Afghanistan</option>
											<option value="5">Ghana</option>
											<option value="6">Albania</option>
											<option value="7">Bahrain</option>
											<option value="8">Colombia</option>
											<option value="9">Dominican Republic</option>
										</select>
									</div>
									<!-- Shipping Address Fields -->
									<div class="form-group row">
										<div class="col-md-6">
											<label for="c_diff_fname" class="text-black">First
												Name <span class="text-danger">*</span>
											</label> <input type="text" class="form-control" id="c_diff_fname"
												name="c_diff_fname">
										</div>
										<div class="col-md-6">
											<label for="c_diff_lname" class="text-black">Last
												Name <span class="text-danger">*</span>
											</label> <input type="text" class="form-control" id="c_diff_lname"
												name="c_diff_lname">
										</div>
									</div>
									<!-- Additional Shipping Info... -->
								</div>
							</div>
						</div>

						<!-- Order Notes -->
						<div class="form-group">
							<label for="c_order_notes" class="text-black">Order Notes</label>
							<textarea name="c_order_notes" id="c_order_notes" cols="30"
								rows="5" class="form-control"
								placeholder="Write your notes here..."></textarea>
						</div>



					</div>
				</div>
				<div class="col-md-6">

					<div class="row mb-5">
						<div class="col-md-12">
							<h2 class="h3 mb-3 text-black">Coupon Code</h2>
							<div class="p-3 p-lg-5 border bg-white">

								<label for="c_code" class="text-black mb-3">Enter your
									coupon code if you have one</label>
								<div class="input-group w-75 couponcode-wrap">
									<input type="text" class="form-control me-2" id="c_code"
										placeholder="Coupon Code" aria-label="Coupon Code"
										aria-describedby="button-addon2">
									<div class="input-group-append">
										<button class="btn btn-black btn-sm" type="button"
											id="button-addon2">Apply</button>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="row mb-5">
						<div class="col-md-12">
							<h2 class="h3 mb-3 text-black">Your Order</h2>
							<div class="p-3 p-lg-5 border bg-white">
								<table class="table site-block-order-table mb-5">
									<thead>
										<tr>
											<th>Product</th>
											<th>Total</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Top Up T-Shirt <strong class="mx-2">x</strong> 1
											</td>
											<td>$250.00</td>
										</tr>
										<tr>
											<td>Polo Shirt <strong class="mx-2">x</strong> 1
											</td>
											<td>$100.00</td>
										</tr>
										<tr>
											<td class="text-black font-weight-bold"><strong>Cart
													Subtotal</strong></td>
											<td class="text-black">$350.00</td>
										</tr>
										<tr>
											<td class="text-black font-weight-bold"><strong>Order
													Total</strong></td>
											<td class="text-black font-weight-bold"><strong>$350.00</strong></td>
										</tr>
									</tbody>
								</table>

								<div class="checkout-payment-method">
									<h3>Payment Methods</h3>
									<form id="payment-form" action="thankyou.html" method="post">
										<!-- Direct Bank Transfer -->
										<div class="payment-option">
											<input type="radio" id="bank-transfer" name="payment_method"
												value="bank_transfer" /> <label for="bank-transfer">Direct
												Bank Transfer</label>
											<div class="bank-transfer-info" style="display: none;">
												<label for="bank-details">Please enter your bank
													details:</label> <input type="text" id="bank-details"
													name="bank_details" placeholder="Bank details">
											</div>
										</div>

										<!-- Cheque Payment -->
										<div class="payment-option">
											<input type="radio" id="cheque" name="payment_method"
												value="cheque" /> <label for="cheque">Cheque
												Payment</label>
											<div class="cheque-info" style="display: none;">
												<label for="cheque-number">Please enter your cheque
													number:</label> <input type="text" id="cheque-number"
													name="cheque_number" placeholder="Cheque number">
											</div>
										</div>

										<!-- Paypal -->
										<div class="payment-option">
											<input type="radio" id="paypal" name="payment_method"
												value="paypal" /> <label for="paypal">Paypal</label>
											<div class="paypal-info" style="display: none;">
												<label for="paypal-email">Please enter your PayPal
													email:</label> <input type="email" id="paypal-email"
													name="paypal_email" placeholder="PayPal email">
											</div>
										</div>

										<!-- Credit/Debit Card Payment -->
										<div class="payment-option">
											<input type="radio" id="card-payment" name="payment_method"
												value="card_payment" /> <label for="card-payment">Credit/Debit
												Card Payment</label>
											<div class="card-info" style="display: none;">
												<label for="card-number">Card Number:</label> <input
													type="text" id="card-number" name="card_number"
													placeholder="Enter card number" maxlength="16" required>

												<label for="card-expiry">Expiration Date:</label> <input
													type="month" id="card-expiry" name="card_expiry" required>

												<label for="card-cvv">CVV:</label> <input type="text"
													id="card-cvv" name="card_cvv" placeholder="Enter CVV"
													maxlength="3" required>
											</div>
										</div>

										<!-- Cash on Delivery -->
										<div class="payment-option">
											<input type="radio" id="cash-on-delivery"
												name="payment_method" value="cash_on_delivery" /> <label
												for="cash-on-delivery">Cash on Delivery</label>
											<div class="cash-on-delivery-info" style="display: none;">
												<p>No card or account details needed. You will pay when
													the order is delivered to your address.</p>
											</div>
										</div>

										<button type="submit">Place Order</button>
									</form>
								</div>
								</div>
								</div>
								</div>
			</div>
							
								<div id="footer-container">
		<%@ include file="Footer.jsp"%>
		<!-- Thêm header từ file Header.jsp -->
	</div> 
								
</body>

</html>