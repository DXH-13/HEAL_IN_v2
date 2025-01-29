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
