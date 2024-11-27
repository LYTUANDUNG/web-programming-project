/**
 * 
 */
document.addEventListener('DOMContentLoaded', function () {
    // Đảm bảo chỉ chạy script khi DOM đã sẵn sàng
    document.querySelector('.search-icon').addEventListener('click', function () {
        var searchContainer = document.querySelector('.search-container');
        searchContainer.classList.toggle('active'); // Bật/tắt trạng thái
        var searchInput = searchContainer.querySelector('.search-input');
        if (searchContainer.classList.contains('active')) {
            searchInput.focus(); // Tự động focus vào input khi hiển thị
        }
    });
});
