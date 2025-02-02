

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


document.addEventListener("DOMContentLoaded", function () {
    const deleteButtons = document.querySelectorAll(".deleteProbtn");
    const tableBody = document.querySelector(".table-cart tbody");
    const tableWrapper = document.querySelector(".table-custom-responsive");
    const totalSection = document.querySelector(".group-xxxl");
    const emptyCartMessage = document.querySelector("#emptyCartMessage"); // Phần tử hiển thị khi giỏ hàng trống

    deleteButtons.forEach((button) => {
        button.addEventListener("click", function () {
            const row = this.closest("tr"); // Tìm hàng cha gần nhất của nút delete

            // Thêm class animation
            row.classList.add("slide-out-left");

            // Đợi animation kết thúc rồi xóa hàng
            row.addEventListener("animationend", function () {
                row.remove(); // Xóa hàng khỏi DOM

                // Kiểm tra nếu không còn hàng nào thì hiển thị emptyCartMessage
                if (tableBody.children.length === 0) {
                    tableWrapper.style.display = "none";
                    totalSection.style.display = "none";
                    emptyCartMessage.style.display = "block"; // Hiển thị thông báo giỏ hàng trống
                }
            });
        });
    });
});


document.addEventListener("DOMContentLoaded", function () {
    const mainCheckbox = document.querySelector("thead .containerCK input"); // Checkbox tổng
    const itemCheckboxes = document.querySelectorAll("tbody .containerCK input"); // Checkbox sản phẩm
    const totalPriceElement = document.querySelector(".text-spacing-75"); // Phần hiển thị tổng tiền

    // Hàm tính tổng giá
    function updateTotalPrice() {
        let total = 0;
        itemCheckboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                const row = checkbox.closest("tr");
                const price = parseFloat(row.querySelector("td:nth-child(5)").textContent.replace("$", ""));
                total += price;
            }
        });
        totalPriceElement.textContent = `$${total.toFixed(2)}`; // Cập nhật hiển thị
    }

    // Xử lý khi click checkbox tổng
    mainCheckbox.addEventListener("change", function () {
        itemCheckboxes.forEach((checkbox) => {
            checkbox.checked = mainCheckbox.checked;
        });
        updateTotalPrice(); // Cập nhật tổng giá
    });

    // Xử lý khi click checkbox từng sản phẩm
    itemCheckboxes.forEach((checkbox) => {
        checkbox.addEventListener("change", function () {
            if (!this.checked) {
                mainCheckbox.checked = false; // Bỏ check tổng nếu có sản phẩm bị bỏ chọn
            } else {
                // Nếu tất cả đều được chọn lại -> check tổng
                mainCheckbox.checked = [...itemCheckboxes].every(cb => cb.checked);
            }
            updateTotalPrice(); // Cập nhật tổng giá
        });
    });

    // Gọi hàm cập nhật tổng giá khi trang tải lần đầu
    updateTotalPrice();
});


function updateQuantity(productId, quantity) {
    $.ajax({
        type: "POST",
        url: "UpdateCartServlet",
        data: { userId: userId, productId: productId, quantity: quantity }, 
        success: function(response) {
            let updatedTotal = response.updatedTotal;
            let productTotal = response.productTotal;
            
            // Cập nhật tổng tiền của sản phẩm trên giao diện
            $(`tr[data-product-id='${productId}'] .product-total`).text(`$${productTotal}`);

            // Cập nhật tổng tiền của giỏ hàng
            $(".text-spacing-75").text(`$${updatedTotal}`);
        },
        error: function() {
            alert("Cập nhật số lượng thất bại. Vui lòng thử lại.");
        }
    });
}


