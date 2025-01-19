function openPopup() {
    document.getElementById("popupForm").classList.remove("hidden");
    document.body.classList.add("no-scroll");
  }
  
  function closePopup() {
    document.getElementById("popupForm").classList.add("hidden");
    document.body.classList.remove("no-scroll");
  }

  document.getElementById("popupForm").addEventListener("click", function () {
    document.getElementById("popupForm").classList.add("hidden");
    document.body.classList.remove("no-scroll");
});

  
