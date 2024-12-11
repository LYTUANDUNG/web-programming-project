function confirmLogout() {
	if (confirm('Are you sure you want to logout?')) {
		// Redirect to logout page
		window.location.href = '/logout';
	}
}

document.addEventListener("DOMContentLoaded", () => {
	// Quản lý sự kiện click để hiển thị phần nội dung tương ứng khi chọn từ menu
	const collapsibleHeaders = document.querySelectorAll('.collapsible-header');

	collapsibleHeaders.forEach(header => {
		header.addEventListener('click', () => {
			const content = header.nextElementSibling;
			const isVisible = content.style.display === "block";
			content.style.display = isVisible ? "none" : "block";
			header.classList.toggle("active", !isVisible);
		});
	});

	// Đảm bảo menu dropdown hoạt động khi di chuột vào
	const navLinks = document.querySelectorAll(".nav-links li");

	navLinks.forEach(link => {
		link.addEventListener("mouseover", () => {
			const dropdown = link.querySelector(".dropdown");
			if (dropdown) {
				dropdown.style.display = "block";
			}
		});

		link.addEventListener("mouseout", () => {
			const dropdown = link.querySelector(".dropdown");
			if (dropdown) {
				dropdown.style.display = "none";
			}
		});
	});
});

// Hàm hiển thị phần tương ứng (category, user, product, etc.)
function showSection(sectionId) {
	$('.section').addClass('hidden');
	$('#' + sectionId).removeClass('hidden');
}

// Hàm để hiển thị form trong modal (Thêm, Sửa)
function showForm(formType) {
	$('#formModalLabel').text(formType.charAt(0).toUpperCase() + formType.slice(1));

	// Reset form mỗi khi mở modal
	resetForm(formType);

	// Tùy theo loại form, ẩn hoặc hiện các phần tử
	if (formType === 'addCategory') {
		$('#formModal .modal-body').html(`
            <form id="categoryForm">
                <div class="mb-3">
                    <label for="categoryName" class="form-label">Category Name</label>
                    <input type="text" class="form-control" id="categoryName" required>
                </div>
                <div class="mb-3">
                    <label for="categoryDesc" class="form-label">Description</label>
                    <textarea class="form-control" id="categoryDesc" required></textarea>
                </div>
            </form>
        `);
	} else if (formType === 'editCategory') {
		$('#formModal .modal-body').html(`
            <form id="categoryForm">
                <div class="mb-3">
                    <label for="categoryName" class="form-label">Category Name</label>
                    <input type="text" class="form-control" id="categoryName" value="Books" required>
                </div>
                <div class="mb-3">
                    <label for="categoryDesc" class="form-label">Description</label>
                    <textarea class="form-control" id="categoryDesc" required>All kinds of books</textarea>
                </div>
            </form>
        `);
	} else if (formType === 'addUser') {
		$('#formModal .modal-body').html(`
            <form id="userForm">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" required>
                </div>
            </form>
        `);
	} else if (formType === 'editUser') {
		$('#formModal .modal-body').html(`
            <form id="userForm">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" value="admin" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" value="admin@example.com" required>
                </div>
            </form>
        `);
	} else if (formType === 'addProduct') {
		$('#formModal .modal-body').html(`
            <form id="productForm">
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" required>
                </div>
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Price</label>
                    <input type="number" class="form-control" id="productPrice" required>
                </div>
            </form>
        `);
	} else if (formType === 'editProduct') {
		$('#formModal .modal-body').html(`
            <form id="productForm">
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" value="Notebook" required>
                </div>
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Price</label>
                    <input type="number" class="form-control" id="productPrice" value="10" required>
                </div>
            </form>
        `);
	}
	$('#formModal').modal('show');
}

// Hàm để reset form mỗi khi mở modal
function resetForm(formType) {
	if (formType === 'addCategory' || formType === 'editCategory') {
		$('#categoryName').val('');
		$('#categoryDesc').val('');
	} else if (formType === 'addUser' || formType === 'editUser') {
		$('#username').val('');
		$('#email').val('');
	} else if (formType === 'addProduct' || formType === 'editProduct') {
		$('#productName').val('');
		$('#productPrice').val('');
	}
}

// Hàm tìm kiếm trong bảng
function searchTable(type) {
	let input, filter, table, tr, td, i, txtValue;
	input = document.getElementById('search' + capitalizeFirstLetter(type));
	filter = input.value.toUpperCase();
	table = document.getElementById(type + 'Table');
	tr = table.getElementsByTagName('tr');

	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName('td');
		let found = false;
		for (let j = 0; j < td.length; j++) {
			if (td[j]) {
				txtValue = td[j].textContent || td[j].innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					found = true;
					break;
				}
			}
		}
		tr[i].style.display = found ? "" : "none";
	}
}

// Hàm để viết hoa chữ cái đầu trong tên
function capitalizeFirstLetter(string) {
	return string.charAt(0).toUpperCase() + string.slice(1);
}

// Hàm xác nhận khi xóa
function confirmDelete(type) {
	if (confirm(`Are you sure you want to remove this ${type}?`)) {
		alert(`Deleted ${type}`);
	}
}

// Các hàm liên quan đến đơn hàng
// Change Order Status Function
function changeOrderStatus(orderId, status) {
	console.log("Order ID: " + orderId + " Status Changed to: " + status);
	// Add code to update the order status in the backend (e.g., via AJAX request)
}

// View Order Details Function
function viewOrderDetails(orderId) {
	// Replace with code to fetch order details and display in modal
	const orderDetails = `
            <p><strong>Order ID:</strong> ${orderId}</p>
            <p><strong>Product:</strong> Notebook</p>
            <p><strong>Status:</strong> Processing</p>
            <p><strong>Shipping Status:</strong> In Transit</p>
            <p><strong>Tracking Number:</strong> 123456789</p>
        `;
	document.getElementById('orderDetails').innerHTML = orderDetails;
	$('#viewOrderModal').modal('show');
}

// Cancel Order Function
function cancelOrder(orderId) {
	console.log("Order ID " + orderId + " is canceled.");
	// Add code to cancel the order in the backend
}

function cancelOrder(orderId) {
	if (confirm(`Are you sure you want to cancel order ${orderId}?`)) {
		alert(`Order ${orderId} has been canceled.`);
	}
}
// Thêm tính năng phân trang sử dụng plugin hoặc tự cài đặt
$('#productsTable').DataTable({
	paging: true,
	searching: true,
	ordering: true,
	pageLength: 10
});

