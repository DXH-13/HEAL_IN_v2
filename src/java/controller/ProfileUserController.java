package controller;

import dao.DAOCart;
import dao.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author dangx
 */
public class ProfileUserController extends HttpServlet {

    DAOUser daoUSer = new DAOUser();
    DAOCart daoCart = new DAOCart();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProfileUserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileUserController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");

        if (userLogin == null) {
            response.sendRedirect("login.jsp"); // Chưa đăng nhập → chuyển hướng về trang login
            return;
        }

        // Lấy thông tin user từ DB để đảm bảo dữ liệu mới nhất
        User user = daoUSer.findByID(userLogin.getNormalUserId());

        // Cập nhật avatar mới nhất vào session (tránh lỗi hiển thị ảnh cũ)
        userLogin.setImage(user.getImage());
        session.setAttribute("userLogin", userLogin);

        int productInCart = daoCart.getProductCountByUserId(userLogin.getNormalUserId());

        request.setAttribute("productInCart", productInCart);
        request.setAttribute("userLogin", user);

        request.getRequestDispatcher("profile-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        int productInCart = daoCart.getProductCountByUserId(userLogin.getNormalUserId());
        request.setAttribute("productInCart", productInCart);
        String action = request.getParameter("action");

        if ("updateProfile".equals(action)) {
            String username = request.getParameter("username");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phonenumber");
            String gender = request.getParameter("gender");
            String dateOrBirth = request.getParameter("dateofbirth");
            boolean isDuplicate = false;

            // Kiểm tra nếu có username/email/phone mới khác hiện tại và đã tồn tại ở DB
            if (!username.equals(userLogin.getUsername()) && daoUSer.findByUsername(username) != null) {
                isDuplicate = true;
            }
            if (!email.equals(userLogin.getEmail()) && daoUSer.findByEmail(email) != null) {
                isDuplicate = true;
            }
            if (!phoneNumber.equals(userLogin.getPhoneNumber()) && daoUSer.findByPhoneNumber(phoneNumber) != null) {
                isDuplicate = true;
            }

            if (isDuplicate) {
                System.out.println("Update lỗi: username/email/phone bị trùng");
                request.setAttribute("error", "Username, Email hoặc Số điện thoại đã tồn tại!");
                request.getRequestDispatcher("profile-user.jsp").forward(request, response);
                return;
            } else {
                User updatedUser = new User();
                updatedUser.setUsername(username);
                updatedUser.setName(name);
                updatedUser.setEmail(email);
                updatedUser.setPhoneNumber(phoneNumber);
                updatedUser.setGender(gender);
                updatedUser.setDateOfBirth(dateOrBirth);
                updatedUser.setNormalUserId(userLogin.getNormalUserId());
                updatedUser.setAccountType(userLogin.getAccountType());
                updatedUser.setImage(userLogin.getImage());
                daoUSer.updateUserProfile(updatedUser);
                System.out.println("Cập nhật thành công!");
                session.setAttribute("userLogin", updatedUser);

                request.setAttribute("success", "Cập nhật thông tin thành công!");
                request.getRequestDispatcher("profile-user.jsp").forward(request, response);
            }
        } else if ("changePassword".equals(action)) {
            String oldPassword = request.getParameter("oldPassword");
            String newPassword = request.getParameter("newPassword");
            String confirmPassword = request.getParameter("confirmPassword");

            if (utils.SHA256.hashPassword(oldPassword).equals(userLogin.getPassword())) {
                if (newPassword.equals(confirmPassword)) {
                    daoUSer.updatePassword(utils.SHA256.hashPassword(newPassword), userLogin.getNormalUserId());
                    request.setAttribute("success", "Đổi mật khẩu thành công!");
                } else {
                    request.setAttribute("error", "Mật khẩu xác nhận không khớp.");
                }
            } else {
                request.setAttribute("error", "Mật khẩu cũ không đúng.");
            }
            request.getRequestDispatcher("profile-user.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
