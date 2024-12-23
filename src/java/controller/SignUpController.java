package controller;

import dao.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import utils.SHA256;
import utils.SendMail;

/**
 *
 * @author dangx
 */
@WebServlet(name = "SignUpController", urlPatterns = {"/sign_up"})
public class SignUpController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String acceptTerm = request.getParameter("term");
        String encryptedPassword = SHA256.hashPassword(password);
        boolean hasError = false;

        // Kiểm tra tính hợp lệ của các trường
        if (email == null || email.trim().isEmpty()) {
            request.setAttribute("errorEmail", "Email is required.");
            hasError = true;
        }

        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("errorUsername", "Username is required.");
            hasError = true;
        }

        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("errorPassword", "Password is required.");
            hasError = true;
        }

        if (acceptTerm == null) {
            request.setAttribute("errorAcceptTerm", "You must accept the terms and conditions.");
            hasError = true;
        }

        // Nếu có lỗi, quay lại trang đăng ký
        if (hasError) {
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        DAOUser daoUser = new DAOUser();
        User user = daoUser.findByEmail(email);

        // Kiểm tra email đã tồn tại
        if (user != null) {
            request.setAttribute("errorExistEmail", "Email is already registered.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        // Chèn người dùng mới
        boolean isInserted = daoUser.insertUser(username, encryptedPassword, email);
        if (!isInserted) {
            System.out.println("Failed to insert user.");
            request.setAttribute("errorServer", "Server error occurred during registration.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        User registeredUser = daoUser.findByEmail(email);

        // Kiểm tra người dùng sau khi chèn
        if (registeredUser == null) {
            System.out.println("Error: Registered user not found after insertion.");
            request.setAttribute("errorServer", "Unable to retrieve user after registration.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        // Gửi email kích hoạt
        SendMail service = new SendMail();
        String linkActive = "http://localhost:9999/HEAL_IN_v2/activate_account?id=" + registeredUser.getId();
        try {
            System.out.println("Sending email to: " + registeredUser.getEmail());
            boolean isSent = service.sendActiveAccountMail(registeredUser.getEmail(), linkActive);
            if (!isSent) {
                System.out.println("Failed to send email.");
                request.setAttribute("errorEmail", "Unable to send activation email.");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
                return;
            }

            // Email gửi thành công
            System.out.println("Email sent successfully.");
            request.setAttribute("registeredUser", registeredUser);
            request.getRequestDispatcher("email-confirmation-required.jsp").forward(request, response);
        } catch (Exception ex) {
            System.out.println("Exception occurred: " + ex.getMessage());
            ex.printStackTrace(); // Ghi log chi tiết lỗi
            request.setAttribute("errorServer", "An error occurred while sending the activation email.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
