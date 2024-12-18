document.addEventListener('DOMContentLoaded', function () {
    // Hiển thị hoặc ẩn dropdown menu khi nhấp vào biểu tượng
    const dropdownToggle = document.getElementById("languageDropdown");
    const dropdownMenu = document.querySelector(".dropdown-menu");
    const dropdownItems = dropdownMenu.querySelectorAll(".dropdown-item");

    // Đảm bảo rằng menu ẩn khi trang được tải
    dropdownMenu.style.display = "none";

    // Lắng nghe sự kiện click trên dropdown toggle (biểu tượng)
    dropdownToggle.addEventListener("click", function (event) {
        event.preventDefault();  // Ngừng sự kiện mặc định của link
        // Chuyển trạng thái hiển thị/ẩn
        dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
    });

    // Lắng nghe sự kiện click cho từng mục trong dropdown
    dropdownItems.forEach(item => {
        item.addEventListener("click", function(event) {
            // Dừng sự kiện truyền đi, để menu không đóng lại ngay
            event.stopPropagation();  
            // Thực hiện hành động chọn ngôn ngữ (ví dụ gửi request đến HeaderServlet)
            const lang = item.getAttribute("href").split('=')[1];  // Lấy giá trị lang từ href
            window.location.href = "HeaderServlet?lang=" + lang;  // Điều hướng sang HeaderServlet
        });
    });

    // Đóng menu nếu nhấn bên ngoài vùng dropdown
    document.addEventListener("click", function (event) {
        // Đảm bảo rằng dropdown chỉ đóng nếu nhấn bên ngoài dropdown
        if (!dropdownToggle.contains(event.target) && !dropdownMenu.contains(event.target)) {
            dropdownMenu.style.display = "none";  // Đóng dropdown khi nhấn ngoài
        }
    });
});
