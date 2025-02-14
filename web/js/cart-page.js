window.addEventListener('scroll', function () {
    const cartBadge = document.querySelector('.cart-badge');
    const scrollY = window.scrollY || window.pageYOffset;
    if (scrollY > 50) {
        cartBadge.style.top = '44px';
    } else {
        cartBadge.style.top = '55px';
    }
});


document.addEventListener("DOMContentLoaded", function () {
    const tableBody = document.querySelector(".table-cart tbody");
    const tableWrapper = document.querySelector(".table-custom-responsive");
    const totalSection = document.querySelector(".group-xxxl");
    const emptyCartMessage = document.querySelector("#emptyCartMessage");

    if (tableBody.children.length === 0) {
        tableWrapper.style.display = "none";
        totalSection.style.display = "none";
        emptyCartMessage.style.display = "block";
    }

});


document.addEventListener("DOMContentLoaded", function () {
    const mainCheckbox = document.querySelector("thead .containerCK input");
    const itemCheckboxes = document.querySelectorAll("tbody .containerCK input");
    const totalPriceElement = document.querySelector(".text-spacing-75");


    function updateTotalPrice() {
        let total = 0;
        itemCheckboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                const row = checkbox.closest("tr");
                const price = parseFloat(row.querySelector("td:nth-child(5)").textContent.replace("$", ""));
                total += price;
            }
        });

        const formattedTotal = new Intl.NumberFormat('vi-VN', {minimumFractionDigits: 3, maximumFractionDigits: 3}).format(total);
        totalPriceElement.textContent = `${formattedTotal}đ`;
    }


    mainCheckbox.addEventListener("change", function () {
        itemCheckboxes.forEach((checkbox) => {
            checkbox.checked = mainCheckbox.checked;
        });
        updateTotalPrice();
    });

    itemCheckboxes.forEach((checkbox) => {
        checkbox.addEventListener("change", function () {
            if (!this.checked) {
                mainCheckbox.checked = false;
            } else {
                mainCheckbox.checked = [...itemCheckboxes].every(cb => cb.checked);
            }
            updateTotalPrice();
        });
    });

    updateTotalPrice();
});






function formatPrice(value) {
    const parts = value.toFixed(3).split('.');
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, '.');
    return parts.join('.');
}

//function updateQuantity(productId, quantity) {
//    console.log("Updating quantity:", productId, quantity);
//    $.ajax({
//        type: "POST",
//        url: "cart",
//        data: {userId: userId, productId: productId, quantity: quantity},
//        success: function (response) {
//            console.log("Response from server:", response);
//
////            let updatedTotal = response.updatedTotal;  // Tổng giá trị đã cập nhật
//            let productTotal = response.productTotal;  // Tổng giá trị cho sản phẩm riêng lẻ
//
//            $(`tr[data-product-id='${productId}'] .product-total`).text(`${formatPrice(productTotal)}đ`);
////            $(".text-spacing-75").text(`${formatPrice(updatedTotal)}đ`);
//        },
//        error: function () {
//            console.error("Cập nhật số lượng thất bại!");
//            alert("Cập nhật số lượng thất bại. Vui lòng thử lại.");
//        }
//    });
//}

function updateQuantity(productId, quantity) {
    console.log("Updating quantity:", productId, quantity);
    $.ajax({
        type: "POST",
        url: "cart",
        data: { userId: userId, productId: productId, quantity: quantity },
        success: function (response) {
            console.log("Response from server:", response);

            let productTotal = response.productTotal;  // Tổng giá trị cho sản phẩm riêng lẻ
            const productRow = $(`tr[data-product-id='${productId}']`);

            // Cập nhật giá thành phần trong giao diện
            productRow.find(".product-total").text(`${formatPrice(productTotal)}đ`);

            // Tính lại tổng giá của giỏ hàng
            updateTotalPriceWithAjax();
        },
        error: function () {
            console.error("Cập nhật số lượng thất bại!");
            alert("Cập nhật số lượng thất bại. Vui lòng thử lại.");
        }
    });
}

function updateTotalPriceWithAjax() {
    let total = 0;
    const itemCheckboxes = document.querySelectorAll("tbody .containerCK input");

    itemCheckboxes.forEach((checkbox) => {
        if (checkbox.checked) {
            const row = checkbox.closest("tr");
            const productTotalText = row.querySelector(".product-total").textContent.replace("đ", "").replace(/\./g, "").trim();
            const productTotal = parseFloat(productTotalText);
            total += productTotal;
        }
    });

    const formattedTotal = new Intl.NumberFormat('vi-VN', { minimumFractionDigits: 0, maximumFractionDigits:0}).format(total);
    document.querySelector(".text-spacing-75").textContent = `${formattedTotal}đ`;
}






document.addEventListener("DOMContentLoaded", function () {
    const deleteButtons = document.querySelectorAll(".deleteProbtn");
    const tableBody = document.querySelector(".table-cart tbody");
    const tableWrapper = document.querySelector(".table-custom-responsive");
    const totalSection = document.querySelector(".group-xxxl");
    const emptyCartMessage = document.querySelector("#emptyCartMessage");
    const cartBadge = document.querySelector(".cart-badge");

    deleteButtons.forEach((button) => {
        button.addEventListener("click", function () {
            const row = this.closest("tr"); // Tìm hàng cha gần nhất của nút delete
            const productId = row.getAttribute("data-product-id"); // Lấy productId từ thuộc tính của <tr>
            const userId = document.body.getAttribute("data-user-id"); // Giả sử userId được lưu trong body

            // Gửi yêu cầu xóa đến backend
            fetch("delete_cart", {
                method: "POST",
                headers: {"Content-Type": "application/x-www-form-urlencoded"},
                body: `userId=${userId}&productId=${productId}`,
            })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) { 
                            // Thêm hiệu ứng trước khi xóa hàng khỏi giao diện
                            row.classList.add("slide-out-left");

                            // Đợi animation kết thúc rồi xóa hàng
                            row.addEventListener("animationend", function () {
                                row.remove();

                                // Cập nhật lại tổng tiền của giỏ hàng
                                document.querySelector(".text-spacing-75").textContent = `${data.updatedTotal}.00đ`;

                                // Cập nhật số lượng sản phẩm trong giỏ hàng
                                if (cartBadge) {
                                    cartBadge.textContent = data.updatedProductCount; // Cập nhật lại số lượng sản phẩm trong giỏ hàng
                                    if (data.updatedProductCount === 0) {
                                        cartBadge.style.display = "none"; // Nếu không còn sản phẩm, ẩn badge
                                    }
                                }

                                // Kiểm tra nếu giỏ hàng trống
                                if (tableBody.children.length === 0) {
                                    tableWrapper.style.display = "none";
                                    totalSection.style.display = "none";
                                    emptyCartMessage.style.display = "block";
                                }
                            });
                        } else {
                            alert("Failed to remove the product. Please try again.");
                        }
                    })
                    .catch(() => {
                        alert("An error occurred. Please try again.");
                    });
        });
    });
});

function submitCheckout() {
    const selectedProducts = document.querySelectorAll('input[name="selectedProducts"]:checked');
    if (selectedProducts.length === 0) {
        alert("Please select at least one product to checkout.");
        return;
    }
    document.getElementById('cartForm').submit();
}




