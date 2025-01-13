package controller;

import dao.DAOTokenForgetPassword;
import dao.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TokenForgetPassword;
import model.User;
import utils.SendMail;

/**
 *
 * @author dangx
 */
@WebServlet(name = "ForgotPasswordController", urlPatterns = {"/forgot_password"})
public class ForgotPasswordController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EnterEmailToResetController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EnterEmailToResetController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        System.out.println("Received email parameter: " + email);

        DAOUser daoUser = new DAOUser();
        User user = daoUser.findByEmail(email);
        if (user == null) {
            System.out.println("Email not found in database.");
            request.setAttribute("errorEmailNotFound", "Email not found.");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        } else {
            System.out.println("User found: " + user.getEmail());
            User user1 = daoUser.checkActiveAccount(user.getEmail(), user.getPassword());
            if (user1 == null) {
                System.out.println("User account is locked.");
                request.setAttribute("errorEmailNotFound", "Your account has been locked. Please contact support for assistance.");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            } else {
                SendMail service = new SendMail();
                String token = service.generateToken();
                String linkReset = "http://localhost:9999/HEAL_IN_v2/reset_password?token=" + token;
                TokenForgetPassword tokenForget = new TokenForgetPassword(user.getNormalUserId(), token, false, service.expiredDateTime());
                DAOTokenForgetPassword daoTokenForgetPassword = new DAOTokenForgetPassword();
                boolean isInserted = daoTokenForgetPassword.addTokenForgetPassword(tokenForget, user);
                if (!isInserted) {
                    System.out.println("Failed to insert token.");
                    request.setAttribute("errorEmailNotFound", "Sorry we have error in server");
                    request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                    return;
                }
                boolean isSent;
                try {
                    System.out.println("Sending email to: " + user.getEmail());
                    isSent = service.sendResetPasswordMail(user.getEmail(), linkReset);
                    if (!isSent) {
                        System.out.println("Failed to send email.");
                        request.setAttribute("errorEmailNotFound", "Can not send request");
                        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                        return;
                    }
                    System.out.println("Email sent successfully.");
                    request.setAttribute("sendmailNotice", "We've sent an email");
                    request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                } catch (Exception ex) {
                    System.out.println("Exception occurred: " + ex.getMessage());
                    ex.printStackTrace(); // Log lỗi chi tiết
                    request.setAttribute("errorEmailNotFound", "Sorry we have error in server");
                    request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                }
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
