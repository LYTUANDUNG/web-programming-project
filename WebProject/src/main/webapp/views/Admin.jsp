<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Admin.css">
<script src="${pageContext.request.contextPath}/js/Admin.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	defer></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<style>
.hidden {
	display: none;
}

.table img {
	max-width: 50px;
}
</style>
</head>
<body>

	<!-- Header -->
	<header
		class="bg-dark text-light py-2 px-3 d-flex justify-content-between align-items-center">
		<h1 class="h3 mb-0">Stationery Admin</h1>
		<nav>
			<ul class="nav">
				<li class="nav-item"><span class="nav-link text-light">Welcome,
						${sessionScope.adminName}</span></li>
				<li class="nav-item"><a class="nav-link text-light" href="#"
					onclick="showSection('home')">Home</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-light" href="#"
					id="manageDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Manage</a>
					<ul class="dropdown-menu" aria-labelledby="manageDropdown">
						<li><a class="dropdown-item" href="#"
							onclick="showSection('categories')">Categories</a></li>
						<li><a class="dropdown-item" href="#"
							onclick="showSection('users')">Users</a></li>
						<li><a class="dropdown-item" href="#"
							onclick="showSection('products')">Products</a></li>
						<li><a class="dropdown-item" href="#"
							onclick="showSection('history')">History</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text-light" href="#"
					onclick="confirmLogout()">Logout</a></li>
			</ul>
		</nav>
	</header>


	<!-- Main Content -->
	<div class="container my-4">
		<!-- Home Section -->

		<div id="home" class="section">
			<h2>Welcome to the Admin Dashboard</h2>
			<div class="row">
				<!-- Card for Total Products -->
				<div class="col-md-3">
					<div class="card text-white bg-primary mb-3">
						<div class="card-header">Total Products</div>
						<div class="card-body">
							<h5 class="card-title">200</h5>
							<p class="card-text">Total products in your store.</p>
						</div>
					</div>
				</div>
				<!-- Card for Total Orders -->
				<div class="col-md-3">
					<div class="card text-white bg-success mb-3">
						<div class="card-header">Total Orders</div>
						<div class="card-body">
							<h5 class="card-title">150</h5>
							<p class="card-text">Total orders placed.</p>
						</div>
					</div>
				</div>
				<!-- Card for Total Users -->
				<div class="col-md-3">
					<div class="card text-white bg-warning mb-3">
						<div class="card-header">Total Users</div>
						<div class="card-body">
							<h5 class="card-title">120</h5>
							<p class="card-text">Users registered on your platform.</p>
						</div>
					</div>
				</div>
				<!-- Card for Total Revenue -->
				<div class="col-md-3">
					<div class="card text-white bg-danger mb-3">
						<div class="card-header">Total Revenue</div>
						<div class="card-body">
							<h5 class="card-title">$5,000</h5>
							<p class="card-text">Total revenue generated.</p>
						</div>
					</div>
				</div>
			</div>

			<!-- Charts Section -->
			<div class="row">
				<!-- Pie Chart -->
				<div class="col-md-4">
					<div class="card mb-3">
						<div class="card-header">Product Category Distribution</div>
						<div class="card-body">
							<canvas id="pieChart"></canvas>
						</div>
					</div>
				</div>
				<!-- Bar Chart -->
				<div class="col-md-4">
					<div class="card mb-3">
						<div class="card-header">Orders by Status</div>
						<div class="card-body">
							<canvas id="barChart"></canvas>
						</div>
					</div>
				</div>
				<!-- Line Chart -->
				<div class="col-md-4">
					<div class="card mb-3">
						<div class="card-header">Revenue Over Time</div>
						<div class="card-body">
							<canvas id="lineChart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Manage Categories -->
		<div id="categories" class="section hidden">
			<h2>Manage Categories</h2>
			<input type="text" id="searchCategories" class="form-control mb-3"
				placeholder="Search Categories" onkeyup="searchTable('categories')">
			<button class="btn btn-primary mb-3"
				onclick="showForm('addCategory')">Add Category</button>
			<table class="table table-striped" id="categoriesTable">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Description</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Books</td>
						<td>All kinds of books</td>
						<td>
							<button class="btn btn-warning btn-sm"
								onclick="showForm('editCategory')">Edit</button>
							<button class="btn btn-danger btn-sm"
								onclick="confirmDelete('category')">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- Manage Users -->
		<div id="users" class="section hidden">
			<h2>Manage Users</h2>
			<input type="text" id="searchUsers" class="form-control mb-3"
				placeholder="Search Users" onkeyup="searchTable('users')">
			<button class="btn btn-primary mb-3" onclick="showForm('addUser')">Add
				User</button>
			<table class="table table-striped" id="usersTable">
				<thead>
					<tr>
						<th>Username</th>
						<th>Email</th>
						<th>Role</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>admin</td>
						<td>admin@example.com</td>
						<td><select class="form-select"
							onchange="changeUserRole('admin', this.value)">
								<option value="Admin" selected>Admin</option>
								<option value="Customer">Customer</option>
						</select></td>
						<td>
							<button class="btn btn-warning btn-sm"
								onclick="showForm('editUser')">Edit</button>
							<button class="btn btn-danger btn-sm"
								onclick="confirmDelete('user')">Remove</button>
						</td>
					</tr>
					<tr>
						<td>john_doe</td>
						<td>john@example.com</td>
						<td><select class="form-select"
							onchange="changeUserRole('john_doe', this.value)">
								<option value="Admin">Admin</option>
								<option value="Customer" selected>Customer</option>
						</select></td>
						<td>
							<button class="btn btn-warning btn-sm"
								onclick="showForm('editUser')">Edit</button>
							<button class="btn btn-danger btn-sm"
								onclick="confirmDelete('user')">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


		<!-- Manage Products -->
		<div id="products" class="section hidden">
			<h2>Manage Products</h2>
			<input type="text" id="searchProducts" class="form-control mb-3"
				placeholder="Search Products" onkeyup="searchTable('products')">
			<button class="btn btn-primary mb-3" onclick="showForm('addProduct')">Add
				Product</button>
			<table class="table table-striped" id="productsTable">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Image</th>
						<th>Price</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Notebook</td>
						<td><img src="/images/notebook.png" alt="Notebook"></td>
						<td>$10</td>
						<td>
							<button class="btn btn-warning btn-sm"
								onclick="showForm('editProduct')">Edit</button>
							<button class="btn btn-danger btn-sm"
								onclick="confirmDelete('product')">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


		<!-- Manage History -->
		<div id="history" class="section hidden">
			<h2>Order History</h2>
			<input type="text" id="searchHistory" class="form-control mb-3"
				placeholder="Search Orders" onkeyup="searchTable('history')">
			<table class="table table-striped" id="historyTable">
				<thead>
					<tr>
						<th>Order ID</th>
						<th>Customer Name</th>
						<th>Product Name</th>
						<th>Order Date</th>
						<th>Status</th>
						<th>Total Amount</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1001</td>
						<td>John Doe</td>
						<td>Notebook</td>
						<td>2024-12-01</td>
						<td><select class="form-select"
							onchange="changeOrderStatus(1001, this.value)">
								<option value="Processing">Processing</option>
								<option value="Shipped">Shipped</option>
								<option value="Delivered">Delivered</option>
						</select></td>
						<td>$20</td>
						<td>
							<button class="btn btn-info btn-sm"
								onclick="viewOrderDetails(1001)">View</button>
							<button class="btn btn-danger btn-sm" onclick="cancelOrder(1001)">Cancel</button>
						</td>
					</tr>
					<tr>
						<td>1002</td>
						<td>Jane Smith</td>
						<td>Pen</td>
						<td>2024-12-05</td>
						<td><select class="form-select"
							onchange="changeOrderStatus(1002, this.value)">
								<option value="Processing">Processing</option>
								<option value="Shipped">Shipped</option>
								<option value="Delivered">Delivered</option>
						</select></td>
						<td>$5</td>
						<td>
							<button class="btn btn-info btn-sm"
								onclick="viewOrderDetails(1002)">View</button>
							<button class="btn btn-danger btn-sm" onclick="cancelOrder(1002)">Cancel</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="formModal" tabindex="-1"
			aria-labelledby="formModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="formModalLabel">Form</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<p>Form content will be loaded dynamically.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Structure -->
		<div class="modal fade" id="viewOrderModal" tabindex="-1"
			aria-labelledby="viewOrderModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="viewOrderModalLabel">Order
							Details</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div id="orderDetails"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	// Admin.js
	$(document)
			.ready(
					function() {
						// Kiểm tra xem các thẻ canvas có tồn tại không
						console.log(document.getElementById('pieChart'));
						console.log(document.getElementById('barChart'));
						console.log(document.getElementById('lineChart'));

						// Pie Chart for Product Category Distribution
						var ctx1 = document.getElementById('pieChart')
								.getContext('2d');
						new Chart(ctx1, {
							type : 'pie',
							data : {
								labels : [ 'Stationery', 'Books',
										'Accessories', 'Others' ],
								datasets : [ {
									label : 'Product Category Distribution',
									data : [ 40, 30, 20, 10 ], // Example data
									backgroundColor : [ '#FF6384', '#36A2EB',
											'#FFCE56', '#4BC0C0' ],
									borderColor : '#fff',
									borderWidth : 1
								} ]
							},
							options : {
								responsive : true
							}
						});

						// Bar Chart for Orders by Status
						var ctx2 = document.getElementById('barChart')
								.getContext('2d');
						new Chart(ctx2, {
							type : 'bar',
							data : {
								labels : [ 'Pending', 'Shipped', 'Delivered',
										'Canceled' ],
								datasets : [ {
									label : 'Orders by Status',
									data : [ 30, 50, 60, 10 ], // Example data
									backgroundColor : '#FF6384',
									borderColor : '#FF6384',
									borderWidth : 1
								} ]
							},
							options : {
								responsive : true,
								scales : {
									y : {
										beginAtZero : true
									}
								}
							}
						});

						// Line Chart for Revenue Over Time
						var ctx3 = document.getElementById('lineChart')
								.getContext('2d');
						new Chart(ctx3, {
							type : 'line',
							data : {
								labels : [ 'January', 'February', 'March',
										'April', 'May' ],
								datasets : [ {
									label : 'Revenue Over Time',
									data : [ 1000, 2000, 3000, 2500, 4000 ], // Example data
									fill : false,
									borderColor : '#FF6384',
									tension : 0.1
								} ]
							},
							options : {
								responsive : true
							}
						});
					});
</script>
</html>
