

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

window.addEventListener('scroll', function() {
    const cartBadge = document.querySelector('.cart-badge');
    const scrollY = window.scrollY || window.pageYOffset;
    if (scrollY > 50) { 
        cartBadge.style.top = '44px'; 
    } else {
        cartBadge.style.top = '55px';
    }
});


//////////////////////////Dang tai anh dai dien/////////////////////////////////
document.getElementById('chooseImageBtn').addEventListener('click', function () {
        document.getElementById('imageInput').click();
    });

    document.getElementById('imageInput').addEventListener('change', function (event) {
        const file = event.target.files[0];
        if (file) {
            if (file.size > 5 * 1024 * 1024) { // 5MB
                alert("Kích thước tệp quá lớn! Vui lòng chọn ảnh dưới 5MB.");
                return;
            }
            
            // Xem trước ảnh
            const reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('previewImage').src = e.target.result;
            };
            reader.readAsDataURL(file);
            
            // Gửi ảnh lên server
            uploadImage(file);
        }
    });

    function uploadImage(file) {
        const formData = new FormData();
        formData.append("image", file);

        fetch("UploadServlet", {
            method: "POST",
            body: formData
        })
        .then(response => response.text())
        .then(data => {
            alert(data);
        })
        .catch(error => {
            console.error("Lỗi khi tải ảnh lên:", error);
        });
    }
