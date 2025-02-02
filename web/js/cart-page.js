

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

//
//document.addEventListener("DOMContentLoaded", function () {
//    const deleteButtons = document.querySelectorAll(".deleteProbtn");
//    const tableBody = document.querySelector(".table-cart tbody");
//    const tableWrapper = document.querySelector(".table-custom-responsive");
//    const totalSection = document.querySelector(".group-xxxl");
//    const emptyCartMessage = document.querySelector("#emptyCartMessage"); // Phần tử hiển thị khi giỏ hàng trống
//
//    deleteButtons.forEach((button) => {
//        button.addEventListener("click", function () {
//            const row = this.closest("tr"); // Tìm hàng cha gần nhất của nút delete
//
//            // Thêm class animation
//            row.classList.add("slide-out-left");
//
//            // Đợi animation kết thúc rồi xóa hàng
//            row.addEventListener("animationend", function () {
//                row.remove(); // Xóa hàng khỏi DOM
//
//                // Kiểm tra nếu không còn hàng nào thì hiển thị emptyCartMessage
//                if (tableBody.children.length === 0) {
//                    tableWrapper.style.display = "none";
//                    totalSection.style.display = "none";
//                    emptyCartMessage.style.display = "block"; // Hiển thị thông báo giỏ hàng trống
//                }
//            });
//        });
//    });
//});
//
//
//document.addEventListener("DOMContentLoaded", function () {
//    const mainCheckbox = document.querySelector("thead .containerCK input"); // Checkbox tổng
//    const itemCheckboxes = document.querySelectorAll("tbody .containerCK input"); // Checkbox sản phẩm
//    const totalPriceElement = document.querySelector(".text-spacing-75"); // Phần hiển thị tổng tiền
//
//    // Hàm tính tổng giá
//    function updateTotalPrice() {
//        let total = 0;
//        itemCheckboxes.forEach((checkbox) => {
//            if (checkbox.checked) {
//                const row = checkbox.closest("tr");
//                const price = parseFloat(row.querySelector("td:nth-child(5)").textContent.replace("$", ""));
//                total += price;
//            }
//        });
//        totalPriceElement.textContent = `$${total.toFixed(2)}`; // Cập nhật hiển thị
//    }
//
//    // Xử lý khi click checkbox tổng
//    mainCheckbox.addEventListener("change", function () {
//        itemCheckboxes.forEach((checkbox) => {
//            checkbox.checked = mainCheckbox.checked;
//        });
//        updateTotalPrice(); // Cập nhật tổng giá
//    });
//
//    // Xử lý khi click checkbox từng sản phẩm
//    itemCheckboxes.forEach((checkbox) => {
//        checkbox.addEventListener("change", function () {
//            if (!this.checked) {
//                mainCheckbox.checked = false; // Bỏ check tổng nếu có sản phẩm bị bỏ chọn
//            } else {
//                // Nếu tất cả đều được chọn lại -> check tổng
//                mainCheckbox.checked = [...itemCheckboxes].every(cb => cb.checked);
//            }
//            updateTotalPrice(); // Cập nhật tổng giá
//        });
//    });
//
//    // Gọi hàm cập nhật tổng giá khi trang tải lần đầu
//    updateTotalPrice();
//});
//
//
////AJAX doPost CartController
//function deleteProduct(userId, productId) {
//    if (confirm("Are you sure you want to delete this product?")) {
//        // Tạo một đối tượng XMLHttpRequest
//        var xhr = new XMLHttpRequest();
//        
//        // Thiết lập phương thức và URL
//        xhr.open("POST", "cart", true);
//        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//        
//        // Xử lý phản hồi từ server
//        xhr.onreadystatechange = function() {
//            if (xhr.readyState === 4 && xhr.status === 200) {
//                // Xóa hàng khỏi bảng nếu xóa thành công
//                var row = document.getElementById("product-" + productId);
//                if (row) {
//                    row.remove();
//                }
//                
//                // Cập nhật tổng tiền hoặc thông báo nếu giỏ hàng trống
//                updateCartTotal();
//            }
//        };
//        
//        // Gửi yêu cầu với userId và productId
//        xhr.send("userId=" + userId + "&productId=" + productId);
//    }
//}


document.addEventListener("DOMContentLoaded", function () {
    // Phần xử lý xóa hàng
    const deleteButtons = document.querySelectorAll(".deleteProbtn");
    const tableBody = document.querySelector(".table-cart tbody");
    const tableWrapper = document.querySelector(".table-custom-responsive");
    const totalSection = document.querySelector(".group-xxxl");
    const emptyCartMessage = document.querySelector("#emptyCartMessage"); // Phần tử hiển thị khi giỏ hàng trống

    deleteButtons.forEach((button) => {
        button.addEventListener("click", function () {
            const row = this.closest("tr"); // Tìm hàng cha gần nhất của nút delete
            const productId = row.dataset.productId; // Lấy productId từ thuộc tính data
            const userId = row.dataset.userId; // Lấy userId từ thuộc tính data

            // Gọi hàm AJAX để xóa sản phẩm
            deleteProduct(userId, productId);
        });
    });

    // Hàm AJAX để xóa sản phẩm
    function deleteProduct(userId, productId) {
        if (confirm("Are you sure you want to delete this product?")) {
            // Tạo một đối tượng XMLHttpRequest
            var xhr = new XMLHttpRequest();

            // Thiết lập phương thức và URL
            xhr.open("POST", "cart", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

            // Xử lý phản hồi từ server
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // Xóa hàng khỏi bảng nếu xóa thành công
                    var row = document.getElementById("product-" + productId);
                    if (row) {
                        // Thêm class animation
                        row.classList.add("slide-out-left");

                        // Đợi animation kết thúc rồi xóa hàng
                        row.addEventListener("animationend", function () {
                            row.remove();

                            // Kiểm tra nếu không còn hàng nào thì hiển thị emptyCartMessage
                            if (tableBody.children.length === 0) {
                                tableWrapper.style.display = "none";
                                totalSection.style.display = "none";
                                emptyCartMessage.style.display = "block"; // Hiển thị thông báo giỏ hàng trống
                            }

                            // Cập nhật tổng giá sau khi xóa hàng
                            updateCartTotal();
                        });
                    }
                }
            };

            // Gửi yêu cầu với userId và productId
            xhr.send("userId=" + userId + "&productId=" + productId);
        }
    }

    // Phần xử lý checkbox và cập nhật tổng giá
    const mainCheckbox = document.querySelector("thead .containerCK input"); // Checkbox tổng
    const itemCheckboxes = document.querySelectorAll("tbody .containerCK input"); // Checkbox sản phẩm
    const totalPriceElement = document.querySelector(".text-spacing-75"); // Phần hiển thị tổng tiền

    // Hàm tính tổng giá
    function updateCartTotal() {
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
        updateCartTotal(); // Cập nhật tổng giá
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
            updateCartTotal(); // Cập nhật tổng giá
        });
    });

    // Gọi hàm cập nhật tổng giá khi trang tải lần đầu
    updateCartTotal();
});