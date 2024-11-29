/**
 * 
 */
// Toggle visibility of Account Password and Ship to a different address when respective checkboxes are toggled
document.addEventListener('DOMContentLoaded', function() {
	// Các checkbox và phần tử cần điều khiển
	const createAccountCheckbox = document.getElementById('c_create_account');
	const shipDifferentAddressCheckbox = document.getElementById('c_ship_different_address');
	const createAccountDiv = document.getElementById('create_an_account');
	const shipAddressDiv = document.getElementById('ship_different_address');

	// Kiểm tra trạng thái checkbox khi trang load
	if (createAccountCheckbox.checked) {
		createAccountDiv.style.display = 'block';
	} else {
		createAccountDiv.style.display = 'none';
	}

	if (shipDifferentAddressCheckbox.checked) {
		shipAddressDiv.style.display = 'block';
	} else {
		shipAddressDiv.style.display = 'none';
	}

	// Khi checkbox "Create an account?" được tích
	createAccountCheckbox.addEventListener('change', function() {
		if (createAccountCheckbox.checked) {
			createAccountDiv.style.display = 'block'; // Hiển thị form "Create an account"
		} else {
			createAccountDiv.style.display = 'none'; // Ẩn form "Create an account"
		}
	});

	// Khi checkbox "Ship To A Different Address?" được tích
	shipDifferentAddressCheckbox.addEventListener('change', function() {
		if (shipDifferentAddressCheckbox.checked) {
			shipAddressDiv.style.display = 'block'; // Hiển thị phần Ship to a Different Address
		} else {
			shipAddressDiv.style.display = 'none'; // Ẩn phần Ship to a Different Address
		}
	});
});

// JavaScript to toggle the visibility of payment information fields
document.querySelectorAll('input[name="payment_method"]').forEach((radio) => {
	radio.addEventListener('change', function() {
		// Ẩn tất cả các trường nhập liệu
		document.querySelectorAll('.bank-transfer-info, .cheque-info, .paypal-info, .card-info, .cash-on-delivery-info').forEach((div) => {
			div.style.display = 'none';
		});

		// Reset lại giá trị các trường nhập liệu
		document.querySelectorAll('.bank-transfer-info input, .cheque-info input, .paypal-info input, .card-info input').forEach((input) => {
			input.value = '';  // Reset các giá trị đã nhập
		});

		// Hiển thị trường nhập liệu tương ứng với phương thức thanh toán đã chọn
		if (this.value === 'bank_transfer') {
			document.querySelector('.bank-transfer-info').style.display = 'block';
		} else if (this.value === 'cheque') {
			document.querySelector('.cheque-info').style.display = 'block';
		} else if (this.value === 'paypal') {
			document.querySelector('.paypal-info').style.display = 'block';
		} else if (this.value === 'card_payment') {
			document.querySelector('.card-info').style.display = 'block';
		} else if (this.value === 'cash_on_delivery') {
			document.querySelector('.cash-on-delivery-info').style.display = 'block';
		}
	});
});

// Xử lý form submission khi người dùng nhấn "Place Order"
document.getElementById('payment-form').addEventListener('submit', function(event) {
	event.preventDefault(); // Ngừng hành động mặc định (ngừng gửi form ngay lập tức)

	// Lấy phương thức thanh toán đã chọn
	const selectedPaymentMethod = document.querySelector('input[name="payment_method"]:checked');

	if (!selectedPaymentMethod) {
		alert("Please select a payment method.");
		return;
	}

	const paymentMethod = selectedPaymentMethod.value;
	let valid = true;

	// Kiểm tra thông tin cho từng phương thức thanh toán yêu cầu
	if (paymentMethod === 'bank_transfer') {
		valid = document.getElementById('bank-details').value !== "";
		if (!valid) {
			alert("Please enter your bank details.");
		}
	} else if (paymentMethod === 'cheque') {
		valid = document.getElementById('cheque-number').value !== "";
		if (!valid) {
			alert("Please enter your cheque number.");
		}
	} else if (paymentMethod === 'paypal') {
		valid = document.getElementById('paypal-email').value !== "";
		if (!valid) {
			alert("Please enter your Paypal email.");
		}
	} else if (paymentMethod === 'card_payment') {
		valid = document.getElementById('card-number').value !== "" || document.getElementById('card-expiry').value !== "" || document.getElementById('card-cvv').value !== "";
		if (!valid) {
			alert("Please enter at least one card detail.");
		}
	}

	// Kiểm tra riêng với COD (Cash on Delivery)
	if (paymentMethod === 'cash_on_delivery') {
		valid = true; // COD không cần nhập thông tin, luôn hợp lệ
	}

	// Nếu thông tin hợp lệ, chuyển hướng tới trang thankyou.html
	if (valid) {
		alert('Your order has been placed successfully!');
		window.location.href = "thankyou.html"; // Chuyển đến trang cảm ơn
	}
});


