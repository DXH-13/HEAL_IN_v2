<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Game Setup</title>
        <link rel="icon" href="assets/images/Avatar.png" type="image/x-icon">
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
        <link rel="stylesheet" href="css/pregame.css">
        <link rel="stylesheet" href="css/fonts.css">
    </head>

    <body class="bg-gray-100 flex justify-center items-center h-screen">

        <div class="preloader">
            <div class="wrapper-triangle">
                <div class="pen">
                    <div class="line-triangle">
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                    </div>
                    <div class="line-triangle">
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                    </div>
                    <div class="line-triangle">
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                        <div class="triangle"></div>
                    </div>
                </div>
            </div>
        </div>


        <a href="landing" class="outButton">
            <i class="fa-sharp-duotone fa-solid fa-arrow-right-from-bracket fa-2xl"
               style="color: rgb(255, 255, 255); top: 100px;"></i>
        </a>

        <div class="w-full max-w-5xl bg-white h-96 p-12 rounded-lg shadow-lg">
            <h1 class="text-4xl font-bold text-center mb-6" style="font-family: Oswald;">Chọn Bộ Bài</h1>

            <div class="flex justify-between gap-4 ">
                <div class="w-1/2 rounded-lg p-4 cursor-pointer hover:shadow-md duration-500 transition"
                     id="deck1">
                    <img src="assets/images/products/doanvien/doanvien_1.png" alt="Deck 1"
                         class="w-full h-48 object-cover mb-4">
                    <h2 class="text-lg font-semibold text-center" style="font-family: Oswald;">Đoàn Viên</h2>
                </div>

                <div class="w-1/2 rounded-lg p-4 hover:shadow-md duration-500 transition"
                     id="deck2" style="pointer-events: none;">
                    <img src="https://placehold.co/800?text=S%E1%BA%AFp%20ra%20m%E1%BA%AFt&font=Montserrat" alt="Deck 2"
                         class="w-full h-48 object-cover mb-4">
                    <h2 class="text-lg font-semibold text-center" style="font-family: Oswald;">Tri Kỷ</h2>
                </div>



            </div>

            <form id="playerForm" action="game" method="POST">
                <div id="playerListHiddenInputs"></div>

                <div class="overlay" id="choiceOverlay">
                    <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-md">
                        <h2 class="text-xl font-bold mb-10">Bạn muốn làm gì tiếp theo?</h2>
                        <div class="flex justify-between">
                            <button type="button" id="startImmediately"
                                    class="bg-[#9A1E22] text-white px-4 py-2 rounded-lg font-bold duration-500 hover:bg-[#FFE6D2] hover:text-black">
                                Bắt đầu ngay
                            </button>
                            <button type="button" id="addPlayers"
                                    class="bg-[#2B9428] text-white px-4 py-2 rounded-lg font-bold duration-500 hover:bg-[#64F196] hover:text-black">
                                Thêm người chơi
                            </button>
                        </div>
                    </div>
                </div>
                

                <div class="overlay" id="playerOverlay">
                    <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-md relative">
                        <h2 class="text-xl font-bold mb-4">Thêm Người Chơi</h2>
                        <div class="flex items-center gap-2 mb-4">
                            <input type="text" id="playerName" class="w-full border border-gray-300 rounded-lg p-2"
                                   placeholder="Nhập tên người chơi">
                            <button type="button" id="addPlayer"
                                    class="bg-[#2B9428] text-white px-4 py-2 font-bold duration-500 rounded-lg hover:bg-[#64F196] hover:text-black">Thêm</button>
                        </div>
                        <div class="overflow-y-auto max-h-40 mb-2" id="playerList"></div>
                        <div class="mt-2">
                            <button type="submit"
                                    class="w-full bg-[#9A1E22]  text-white  font-bold duration-500 px-4 py-2 rounded-lg hover:bg-[#FFE6D2] hover:text-black">
                                Bắt đầu
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <script src="js/pregame.js"></script>
        <script src="js/core.min.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>
