window.addEventListener('scroll', function () {
    const cartBadge = document.querySelector('.cart-badge');
    const scrollY = window.scrollY || window.pageYOffset;

    // Điều chỉnh giá trị top dựa trên vị trí cuộn
    if (scrollY > 50) { // Khi cuộn xuống quá 50px
        cartBadge.style.top = '44px'; // Đẩy lên cao hơn
    } else {
        cartBadge.style.top = '55px'; // Trở về vị trí ban đầu
    }
});

$(document).ready(function () {
    $("#addToCartForm").submit(function (event) {
        event.preventDefault(); // Ngăn reload trang

        let productId = $("#productId").val();
        let quantity = $("#quantity").val();

        $.ajax({
            type: "POST",
            url: "single_product",
            data: { productId: productId, quantity: quantity },
            dataType: "json",
            success: function (response) {
                if (response.success) {
                    // Cập nhật số lượng sản phẩm trong giỏ hàng
                    $("#cartCount").text(response.productInCart);

                    // Hiển thị popup thông báo
                    $("#cartPopupMessage").text("Sản phẩm đã thêm vào giỏ hàng!");
                    $("#cartPopup").fadeIn(300);

                    // Ẩn popup sau 2 giây
                    setTimeout(function () {
                        $("#cartPopup").fadeOut(300);
                    }, 2000);
                } else {
                    $("#cartPopupMessage").text("Lỗi: " + response.message);
                    $("#cartPopup").fadeIn(300);
                    
                    setTimeout(function () {
                        $("#cartPopup").fadeOut(300);
                    }, 2000);
                }
            },
            error: function (xhr, status, error) {
                console.error("Lỗi AJAX:", xhr.responseText);
                $("#cartPopupMessage").text("Có lỗi xảy ra. Vui lòng thử lại!");
                $("#cartPopup").fadeIn(300);

                setTimeout(function () {
                    $("#cartPopup").fadeOut(300);
                }, 2000);
            }
        });
    });
});


    