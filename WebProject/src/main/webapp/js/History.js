// Toggle the visibility of items in each transaction
function toggleItems(transactionId) {
    const itemsList = document.getElementById(`items-list-${transactionId}`);
    itemsList.classList.toggle('show'); // Toggle class để kích hoạt hiệu ứng
}

// Attach event listeners to all transaction headers
document.querySelectorAll('#more-infor').forEach(item => {
    item.addEventListener('click', function () {
        const transactionId = this.getAttribute('data-id');
        toggleItems(transactionId);
    });
});
