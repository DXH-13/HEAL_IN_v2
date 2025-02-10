let selectedDeck = null;
let players = [];

// Xử lý chọn bộ bài
document.querySelector("#deck1").addEventListener("click", () => {
    selectedDeck = "Bộ Bài Đoàn Viên";
    openChoicePopup();
});

document.querySelector("#deck2").addEventListener("click", () => {
    selectedDeck = "Bộ Bài Tri Kỷ";
    openChoicePopup();
});

document.querySelector("#startImmediately").addEventListener("click", () => {
    alert(`Bắt đầu trò chơi với bộ bài: ${selectedDeck}`);
    closePopup("#choiceOverlay");
});

document.querySelector("#addPlayers").addEventListener("click", () => {
    closePopup("#choiceOverlay");
    openPopup("#playerOverlay");
});

document.querySelector("#addPlayer").addEventListener("click", (event) => {
    event.preventDefault();
    const playerName = document.querySelector("#playerName").value.trim();

    if (!playerName || players.includes(playerName)) {
        document.querySelector("#playerName").classList.add("border-red-500");
        document.querySelector("#playerName").value = "";
        document.querySelector("#playerName").placeholder = "Tên không hợp lệ hoặc đã tồn tại!";
        return;
    }

    if (players.length < 5) {
        players.push(playerName);
        addPlayerCard(playerName);
        addHiddenPlayerInput(playerName);
        document.querySelector("#playerName").value = "";
        document.querySelector("#playerName").classList.remove("border-red-500");
        document.querySelector("#playerName").placeholder = "Nhập tên người chơi";
    }

    if (players.length === 5) {
        document.querySelector("#addPlayer").disabled = true;
    }
});

document.querySelector("form").addEventListener("submit", (event) => {
    if (players.length === 0) {
        event.preventDefault();
        alert("Bạn phải thêm ít nhất 1 người chơi!");
    }
});

function openChoicePopup() {
    openPopup("#choiceOverlay");
}

function openPopup(selector) {
    document.querySelector(selector).classList.add("active");
}

function closePopup(selector) {
    document.querySelector(selector).classList.remove("active");
}

function addPlayerCard(playerName) {
    const playerList = document.querySelector("#playerList");
    const playerCard = document.createElement("div");
    playerCard.classList.add("player-card", "bg-gray-100", "p-2", "rounded-lg", "shadow", "flex", "justify-between", "mb-2");
    playerCard.innerHTML = `
        <span>${playerName}</span>
        <button class="text-red-500 hover:text-red-700 removePlayer">X</button>
    `;
    playerList.appendChild(playerCard);

    playerCard.querySelector(".removePlayer").addEventListener("click", () => {
        playerList.removeChild(playerCard);
        players = players.filter(player => player !== playerName);
        document.querySelector(`input[value="${playerName}"]`).remove();
        document.querySelector("#addPlayer").disabled = false;
    });
}

function addHiddenPlayerInput(playerName) {
    const input = document.createElement("input");
    input.type = "hidden";
    input.name = "players[]";
    input.value = playerName;
    document.querySelector("#playerListHiddenInputs").appendChild(input);
}
