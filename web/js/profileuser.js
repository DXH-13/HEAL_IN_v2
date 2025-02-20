

function openPopup() {
    const popup = document.getElementById("popupForm");
    popup.classList.remove("hidden", "slide-out-top");
    popup.classList.add("slide-in-top");
    document.body.classList.add("no-scroll");
}

function closePopup() {
    const popup = document.getElementById("popupForm");
    popup.classList.remove("slide-in-top");
    popup.classList.add("slide-out-top");

    // Chờ hoạt ảnh kết thúc trước khi ẩn popup
    popup.addEventListener("animationend", function handleAnimationEnd() {
        popup.classList.add("hidden");
        popup.classList.remove("slide-out-top");
        document.body.classList.remove("no-scroll");

        // Loại bỏ sự kiện để tránh lặp lại
        popup.removeEventListener("animationend", handleAnimationEnd);
    });
}

// Đóng popup khi click ra ngoài
document.getElementById("popupForm").addEventListener("click", function (event) {
    if (event.target === this) {
        closePopup();
    }
});

window.addEventListener('scroll', function () {
    const cartBadge = document.querySelector('.cart-badge');
    const scrollY = window.scrollY || window.pageYOffset;
    if (scrollY > 50) {
        cartBadge.style.top = '44px';
    } else {
        cartBadge.style.top = '55px';
    }
});
/////////////////////////////////////////////////

document.addEventListener("DOMContentLoaded", function () {
    const imageInput = document.getElementById("imageInput");
    const chooseImageBtn = document.getElementById("chooseImageBtn");
    const previewImage = document.getElementById("previewImage");
    
    chooseImageBtn.addEventListener("click", function () {
        imageInput.click();
    });
    
    imageInput.addEventListener("change", function () {
        if (imageInput.files.length > 0) {
            let formData = new FormData();
            formData.append("avatar", imageInput.files[0]);
            
            fetch("upload_image", {
                method: "POST",
                body: formData
            })
            .then(response => response.text())
            .then(imagePath => {
                if (imagePath.startsWith("uploads/")) {
                    previewImage.src = imagePath; // Cập nhật ảnh mới
                } else {
                    alert("Lỗi tải ảnh: " + imagePath);
                }
            })
            .catch(error => {
                console.error("Lỗi:", error);
            });
        }
    });
});

