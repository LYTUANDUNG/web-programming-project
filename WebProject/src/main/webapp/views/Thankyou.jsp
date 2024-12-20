<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Thankyou.css">
<script src="${pageContext.request.contextPath}/js/Home.js"></script>
</head>

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
                        <h1>Cart</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="thankyou-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center pt-5">
                    <span class="thankyou-icon text-primary">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check mb-5" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M11.354 5.646a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708 0z"></path>
                            <path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"></path>
                        </svg>
                    </span>
                    <h2 class="thankyou-title">Thank You!</h2>
                    <p class="lead mb-5">Your order has been completed.</p>
                    <p><a href="shop.jsp" class="btn btn-sm btn-outline-black">Back to Shop</a></p>
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
