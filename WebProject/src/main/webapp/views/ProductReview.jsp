<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Đánh giá sản phẩm</title>
<style>
body {
	margin: 0;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	display: flex;
	height: 100vh;
}

.btn {
	width: 396px;
	height: 48px;
	background: #3B5D50;
	cursor: pointer;
	color: #fff;
	letter-spacing: 1px;
	border-radius: 10px;
	border: none;
	transition: background 0.3s ease, transform 0.3s ease;
}

.btn:hover {
	background: #F8B810;
	transform: scale(1.05);
}

.wrapper {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 300px;
	height: 250px;
	justify-content: center;
	align-items: center;
	width: 300px;
	align-items: center;
	width: 300px;
	height: 250px;
	justify-content: center;
	align-items: center;
	width: 300px;
	height: 250px;
	justify-content: center;
	align-items: center;
}

.stars {
	display: flex;
	cursor: pointer;
}

.star {
	font-size: 40px;
	color: #ddd;
	transition: color 0.2s;
}

.star.active {
	color: gold;
}

textarea {
	resize: none;
	overflow-y: auto;
	height: 100px;
	width: 100%;
}

.radius {
	border-radius: 10px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<h1>Product Review</h1>

		<div class="stars" id="star-container">
			<!-- 5 ngôi sao -->
			<span class="star" data-value="1">&#9733;</span> <span class="star"
				data-value="2">&#9733;</span> <span class="star" data-value="3">&#9733;</span>
			<span class="star" data-value="4">&#9733;</span> <span class="star"
				data-value="5">&#9733;</span>
		</div>

		<form action="${pageContext.request.contextPath}/submitReview" method="post">
			<input type="hidden" name="productId" value="${productId}"> <input
				type="hidden" id="rating" name="rating" value="0">
			<textarea class="radius" name="comment"
				placeholder=" type your feed back..." rows="4" cols="50" required></textarea>
			<br> <br>
			<button class="btn" type="submit">Send feed back</button>
		</form>
	</div>


	<script>
    const starContainer = document.getElementById('star-container');
    const stars = document.querySelectorAll('.star');
    const ratingInput = document.getElementById('rating');

    let currentRating = 0; // Giá trị đánh giá hiện tại

    if (!ratingInput) {
        console.error("Không tìm thấy input để lưu giá trị đánh giá!");
    }

    // Gắn sự kiện click cho từng sao
    stars.forEach(star => {
        star.addEventListener('click', () => {
            const selectedValue = parseInt(star.getAttribute('data-value'));

            if (selectedValue === currentRating) {
                currentRating = 0;
                ratingInput.value = 0;
                stars.forEach(s => s.classList.remove('active'));
            } else {
                currentRating = selectedValue;
                ratingInput.value = currentRating;

                // Làm sáng các sao từ 1 đến sao được chọn
                stars.forEach(s => {
                    if (parseInt(s.getAttribute('data-value')) <= currentRating) {
                        s.classList.add('active');
                    } else {
                        s.classList.remove('active');
                    }
                });
            }
        });
    });
</script>

</body>
</html>
