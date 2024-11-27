/**
 * 
 */
// Tải header từ Header.js
function loadHeader() {
    fetch('Header.jsp')
        .then(response => response.text())
        .then(data => {
            document.getElementById('header-container').innerHTML = data;

            // Chạy script từ Header.js
            var scripts = document.querySelectorAll('#header-container script');
            scripts.forEach(script => {
                var newScript = document.createElement('script');
                newScript.textContent = script.textContent;
                document.body.appendChild(newScript);
            });

            // Thêm sự kiện click cho kính lúp
            const searchIcon = document.querySelector('.search-icon');
            if (searchIcon) {
                searchIcon.addEventListener('click', function () {
                    const searchContainer = document.querySelector('.search-container');
                    searchContainer.classList.toggle('active');
                    const searchInput = searchContainer.querySelector('.search-input');
                    if (searchContainer.classList.contains('active')) {
                        searchInput.focus();
                    }
                });
            }
        })
        .catch(error => console.error('Lỗi khi tải header:', error));
}

// Slider testimonials
document.addEventListener('DOMContentLoaded', function () {
    const slider = document.querySelector('.testimonial-slider');
    const items = document.querySelectorAll('.testimonial-item');
    const dotsContainer = document.querySelector('.testimonial-dots');

    let currentIndex = 0;
    const totalItems = items.length;

    // Tạo các chấm (dots)
    for (let i = 0; i < totalItems; i++) {
        const dot = document.createElement('div');
        dot.classList.add('dot');
        if (i === 0) dot.classList.add('active');
        dot.addEventListener('click', () => moveToSlide(i));
        dotsContainer.appendChild(dot);
    }

    const dots = document.querySelectorAll('.dot');

    function moveToSlide(index) {
        slider.style.transform = `translateX(-${index * 100}%)`;
        dots.forEach(dot => dot.classList.remove('active'));
        dots[index].classList.add('active');
        currentIndex = index;
    }

    function autoScrollSlider() {
        let nextIndex = (currentIndex + 1) % totalItems;
        moveToSlide(nextIndex);
    }

    setInterval(autoScrollSlider, 3000);
});

// Tải header khi trang được tải
window.onload = loadHeader;
