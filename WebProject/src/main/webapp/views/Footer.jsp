<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<f:setBundle basename="lang.lang" var="bundle" scope="session" />
<f:setLocale
    value="${sessionScope.lang != null ? sessionScope.lang : 'en_US'}"
    scope="session" />
<!DOCTYPE html>
<html
    lang="${sessionScope.lang != null ? sessionScope.lang.split('_')[0] : 'en'}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><f:message bundle="${bundle}" key="footer.title" /></title>
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.0/css/all.min.css"
        integrity="sha512-9xKTRVabjVeZmc+GUW8GgSmcREDunMM+Dt/GrzchfN8tkwHizc5RP4Ok/MXFFy5rIjJjzhndFScTceq5e6GvVQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Link to your custom CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/Footer.css">
</head>

<body>
    <footer class="custom-footer">
        <!-- LIÊN KẾT -->
        <div class="footer-links">
            <ul class="footer-nav">
                <li><a href="AboutUs.jsp"><f:message bundle="${bundle}" key="footer.about" /></a></li>
                <li><a href="PrivacyPolicy.jsp"><f:message bundle="${bundle}" key="footer.privacy" /></a></li>
                <li><a href="Terms.jsp"><f:message bundle="${bundle}" key="footer.terms" /></a></li>
                <li><a href="Contact.jsp"><f:message bundle="${bundle}" key="footer.contact" /></a></li>
            </ul>
        </div>

        <!-- MẠNG XÃ HỘI -->
        <div class="footer-social">
            <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://linkedin.com" target="_blank"><i class="fab fa-linkedin"></i></a>
        </div>

        <!-- BẢN QUYỀN -->
        <div class="footer-copyright">
            <p>&copy; <f:message bundle="${bundle}" key="footer.copyright" /> 2024</p>
        </div>
    </footer>

    <!-- Link to custom JS -->
    <script src="${pageContext.request.contextPath}/js/Footer.js"></script>
</body>

</html>
