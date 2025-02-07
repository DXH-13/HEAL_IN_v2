const radioPanels = document.querySelectorAll('.radio-panel');

radioPanels.forEach(panel => {
  const input = panel.querySelector('input[type="radio"]');
  const label = panel.querySelector('label');

  input.addEventListener('change', () => {
    // Remove 'active' class from all labels
    radioPanels.forEach(p => p.querySelector('label').classList.remove('active'));
    
    // Add 'active' class to the clicked label
    label.classList.add('active');
  });
});


//
////Kiểm tra khi click submit form
//function validateForm() {
//  const provincesSelect = document.getElementById('provinces');
//  const selectedOption = provincesSelect.options[provincesSelect.selectedIndex];
//  
//  // Kiểm tra nếu option được chọn có tên là "Tỉnh/Thành phố"
//  if (selectedOption.textContent === "Tỉnh/Thành phố") {
//      alert("Vui lòng chọn Tỉnh/Thành phố.");
//      return false; // Ngừng gửi form
//  }
//  return true;
//}
//
//function checkDefaultOption(event) {
//  const provincesSelect = event.target;
//  const selectedOption = provincesSelect.options[provincesSelect.selectedIndex];
//  
//  // Kiểm tra nếu tên của option là "Tỉnh/Thành phố"
//  if (selectedOption.textContent === "Tỉnh/Thành phố") {
//      alert("Vui lòng chọn Tỉnh/Thành phố.");
//      // Bạn có thể tự động bỏ chọn giá trị mặc định nếu muốn
//      provincesSelect.selectedIndex = 0; // Đặt lại chỉ mục về option mặc định
//  }
//}


