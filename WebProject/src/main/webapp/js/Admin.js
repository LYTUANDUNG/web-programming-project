
// Hàm xác nhận khi đăng xuất
function confirmLogout() {
	if (confirm('Are you sure you want to logout?')) {
		// Redirect to logout page
		window.location.href = '/logout';
	}
}

// Quản lý sự kiện click để hiển thị phần nội dung tương ứng khi chọn từ menu
document.addEventListener("DOMContentLoaded", () => {
	const collapsibleHeaders = document.querySelectorAll('.collapsible-header');
	collapsibleHeaders.forEach(header => {
		header.addEventListener('click', () => {
			const content = header.nextElementSibling;
			const isVisible = content.style.display === "block";
			content.style.display = isVisible ? "none" : "block";
			header.classList.toggle("active", !isVisible);
		});
	});

	// Quản lý menu dropdown
	const navLinks = document.querySelectorAll(".nav-links li");
	navLinks.forEach(link => {
		link.addEventListener("mouseover", () => {
			const dropdown = link.querySelector(".dropdown");
			if (dropdown) dropdown.style.display = "block";
		});

		link.addEventListener("mouseout", () => {
			const dropdown = link.querySelector(".dropdown");
			if (dropdown) dropdown.style.display = "none";
		});
	});
});

// Hàm hiển thị form trong modal
function showForm(formType, user = null) {
	$('#formModalLabel').text(formType.charAt(0).toUpperCase() + formType.slice(1));
	resetForm(formType);  // Reset form mỗi khi mở modal

	let formHtml = '';
	if (formType === 'addUser') {
		formHtml = `
            <form id="userForm">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" required>
                </div>
                <div class="mb-3">
                    <label for="role" class="form-label">Role</label>
                    <select class="form-select" id="role" required>
                        <option value="Admin">Admin</option>
                        <option value="Customer">Customer</option>
                    </select>
                </div>
            </form>
        `;
	} else if (formType === 'editUser' && user) {
		formHtml = `
            <form id="userForm">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" value="${user.username}" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" value="${user.email}" required>
                </div>
                <div class="mb-3">
                    <label for="role" class="form-label">Role</label>
                    <select class="form-select" id="role" required>
                        <option value="Admin" ${user.role === 'Admin' ? 'selected' : ''}>Admin</option>
                        <option value="Customer" ${user.role === 'Customer' ? 'selected' : ''}>Customer</option>
                    </select>
                </div>
            </form>
        `;
	}

	$('#formModal .modal-body').html(formHtml);
	$('#formModal').modal('show');

	// Xử lý hành động "Save"
	$('#formModal .btn-primary').off('click').on('click', function() {
		const username = $('#username').val();
		const email = $('#email').val();
		const role = $('#role').val();

		if (formType === 'addUser') {
			// Thực hiện thêm người dùng mới
			addUser(username, email, role);
		} else if (formType === 'editUser') {
			// Thực hiện chỉnh sửa người dùng
			editUser(user.id, username, email, role);
		}
	});
}

// Hàm để reset form mỗi khi mở modal
function resetForm(formType) {
	if (formType === 'addUser' || formType === 'editUser') {
		$('#username').val('');
		$('#email').val('');
		$('#role').val('Admin');
	}
}

// Hàm thêm người dùng
function addUser(username, email, role) {
	// Mã gửi dữ liệu đến server qua AJAX hoặc thực hiện hành động cần thiết
	$.post('/addUser', { username: username, email: email, role: role })
		.done(() => {
			alert('User added successfully!');
			$('#formModal').modal('hide');
			location.reload();  // Tải lại trang để cập nhật danh sách người dùng
		})
		.fail(() => {
			alert('Failed to add user!');
		});
}

// Hàm chỉnh sửa người dùng
function editUser(userId, username, email, role) {
	// Mã gửi dữ liệu chỉnh sửa người dùng qua AJAX
	$.post('/editUser', { userId: userId, username: username, email: email, role: role })
		.done(() => {
			alert('User updated successfully!');
			$('#formModal').modal('hide');
			location.reload();  // Tải lại trang để cập nhật danh sách người dùng
		})
		.fail(() => {
			alert('Failed to update user!');
		});
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

// Hàm xác nhận khi xóa
function confirmDelete(type) {
	if (confirm(`Are you sure you want to remove this ${type}?`)) {
		alert(`Deleted ${type}`);
	}
}

// Hàm để thay đổi quyền người dùng
function changeUserRole(username, newRole) {
	if (confirm(`Are you sure you want to change the role of ${username} to ${newRole}?`)) {
		// Make an AJAX call to the server to update the role
		$.post('/updateRole', { username: username, role: newRole })
			.done(() => alert('Role updated successfully!'))
			.fail(() => alert('Failed to update role.'));
	}
}

// Thêm tính năng phân trang sử dụng DataTable
$('#productsTable').DataTable({
	paging: true,
	searching: true,
	ordering: true,
	pageLength: 10
});
