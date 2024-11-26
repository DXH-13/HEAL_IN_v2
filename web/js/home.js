const avatarContainer = document.getElementById('avatarContainer');
        const avatar = document.getElementById('avatar');
        const dropdownMenu = document.getElementById('dropdownMenu');

        // Lắng nghe sự kiện scroll
        window.addEventListener('scroll', () => {
            const scrollPosition = window.scrollY;
            // Dịch chuyển avatar lên khi cuộn
            if (scrollPosition > 50) {
                avatarContainer.style.top = '10px'; // Dịch lên trên 10px
            } else {
                avatarContainer.style.top = '75px'; // Quay về vị trí ban đầu
            }
        });

        // Bật/tắt dropdown menu
        avatar.addEventListener('click', () => {
            const isVisible = dropdownMenu.style.display === 'block';
            dropdownMenu.style.display = isVisible ? 'none' : 'block';
        });

        // Ẩn menu khi nhấn bên ngoài
        document.addEventListener('click', (event) => {
            if (!avatar.contains(event.target) && !dropdownMenu.contains(event.target)) {
                dropdownMenu.style.display = 'none';
            }
        });