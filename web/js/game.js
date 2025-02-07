const cards = document.querySelectorAll('.card');
const shuffleSpreadButton = document.getElementById('shuffle-spread-button');
const stack = document.querySelector('.stack');
let isSpread = false;

// Ban đầu chỉ hiện 3 lá bài cuối
stack.classList.add('folded');

[...stack.children].reverse().forEach(i => stack.append(i));

// Define the initial shuffle event handler
function shuffleHandler() {
    shuffleCards(5);
}

shuffleSpreadButton.addEventListener("click", shuffleHandler);

function shuffleCards(times) {
    for (let i = 0; i < times; i++) {
        setTimeout(() => {
            let card = document.querySelector(".card:last-child");
            card.style.animation = "swap 400ms ease-in-out forwards";

            setTimeout(() => {
                card.style.animation = "";
            }, 420);

            // When the last shuffle is done, change the button text
            if (i === times - 1) {
                setTimeout(() => {
                    shuffleSpreadButton.textContent = "Trải bài";

                    // Remove the shuffle event listener
                    shuffleSpreadButton.removeEventListener('click', shuffleHandler);

                    // Add the event listener for spreading the cards
                    shuffleSpreadButton.addEventListener('click', spreadCards);
                }, 420);
            }
        }, i * 480); // Add delay for each shuffle
    }
}

function spreadCards() {
    if (!isSpread) {
        cards.forEach(card => {
            card.classList.add('spread'); // Xòe bài
        });
        shuffleSpreadButton.classList.add('spread');
        isSpread = true;
    }
}



let activeCard = null;
let currentPlayerIndex = 0;


cards.forEach((card, index) => {
    card.addEventListener('click', () => {
        if (card.classList.contains('active')) return;
        if (activeCard) {
            activeCard.classList.remove('active', 'flip');
            const activeIcon = activeCard.querySelector('.icon-container i');
            if (activeIcon) activeIcon.style.display = 'none';
            activeCard.style.display = 'none';
        }
        card.classList.add('active', 'flip');
        activeCard = card;
        const iconContainers = document.querySelectorAll('.icon-container i');
        iconContainers.forEach(icon => icon.style.display = 'none');
        iconContainers[currentPlayerIndex].style.display = 'inline-block';
        currentPlayerIndex = (currentPlayerIndex + 1) % iconContainers.length;
    });
});





// const chatButton = document.querySelector('.chatButton');
// const chatContainer = document.querySelector('.chatContainer');
// let isChatOpen = false;

// chatButton.addEventListener('click', () => {
//     if (!isChatOpen) {
//         chatContainer.classList.remove('slide-out-left');
//         chatContainer.classList.add('slide-in-left');
//         chatContainer.style.display = 'block';
//     } else {
//         chatContainer.classList.remove('slide-in-left');
//         chatContainer.classList.add('slide-out-left');
//         setTimeout(() => {
//             chatContainer.style.display = 'none';
//         }, 500); // Đợi animation hoàn thành (0.5s)
//     }
//     isChatOpen = !isChatOpen;
// });


const button = document.getElementById('shuffle-spread-button');
const audio1 = document.getElementById('soundShuffle');
let hasPlayed = false;  // Biến để theo dõi trạng thái đã phát âm thanh hay chưa

// Thêm sự kiện click vào nút
button.addEventListener('click', function () {
    if (!hasPlayed) {  // Nếu chưa phát âm thanh
        // Phát âm thanh
        audio1.play().catch((error) => {
            console.error('Không thể phát âm thanh:', error);
        });
        hasPlayed = true;  // Đánh dấu là đã phát âm thanh
    }
});


const audio2 = document.getElementById('soundFlip');

// Lặp qua tất cả các thẻ card và thêm sự kiện click
cards.forEach(card => {
    card.addEventListener('click', function () {
        // Phát âm thanh khi click vào thẻ card
        audio2.play().catch((error) => {
            console.error('Không thể phát âm thanh:', error);
        });
    });
});
