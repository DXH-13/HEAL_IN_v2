window.addEventListener('scroll', function() {
    const cartBadge = document.querySelector('.cart-badge');
    const scrollY = window.scrollY || window.pageYOffset;

    // Điều chỉnh giá trị top dựa trên vị trí cuộn
    if (scrollY > 50) { // Khi cuộn xuống quá 50px
        cartBadge.style.top = '44px'; // Đẩy lên cao hơn
    } else {
        cartBadge.style.top = '55px'; // Trở về vị trí ban đầu
    }
});