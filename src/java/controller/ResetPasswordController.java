/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import jakarta.servlet.http.HttpSession;
import model.TokenForgetPassword;
import model.User;
import utils.SHA256;
import utils.SendMail;

/**
 *
 * @author dangx
 */
@WebServlet(name = "ResetPasswordController", urlPatterns = {"/resetpassword"})
public class ResetPasswordController extends HttpServlet {

    DAOTokenForgetPassword daoToken = new DAOTokenForgetPassword();
    DAOUser daoUser = new DAOUser();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ResetPasswordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ResetPasswordController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");
        HttpSession session = request.getSession();
        if (token != null) {
            TokenForgetPassword tokenPassword = daoToken.getTokenForgetPassword(token);
            SendMail service = new SendMail();
            if (tokenPassword == null) {
                request.setAttribute("errorEmailNotFound", "Token invalid");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                return;
            }
            if (tokenPassword.isIsUsed()) {
                request.setAttribute("errorEmailNotFound", "Token is used");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                return;
            }
            if (service.isExpiredTime(tokenPassword.getExpiryTime())) {
                request.setAttribute("errorEmailNotFound", "Token is expiry time");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                return;
            }
            User user = daoUser.findByID(tokenPassword.getUserId());
//            request.setAttribute("email", user.getEmail());
            session.setAttribute("token", tokenPassword.getToken());
            request.getRequestDispatcher("reset-password.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorCFpass", "The password confirmation does not match.");
            request.getRequestDispatcher("reset-password.jsp").forward(request, response);
            return;
        }
        HttpSession session = request.getSession();
        String tokenStr = (String) session.getAttribute("token");
        TokenForgetPassword tokenForgetPassword = daoToken.getTokenForgetPassword(tokenStr);
        //check token is valid, of time, of used
        SendMail service = new SendMail();
        if (tokenForgetPassword == null) {
            request.setAttribute("errorEmailNotFound", "Token invalid");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }
        if (tokenForgetPassword.isIsUsed()) {
            request.setAttribute("errorEmailNotFound", "Token is used");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }
        if (service.isExpiredTime(tokenForgetPassword.getExpiryTime())) {
            request.setAttribute("errorEmailNotFound", "Token is expiry time");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }
        
        
        tokenForgetPassword.setToken(tokenStr);
        tokenForgetPassword.setIsUsed(true);

        
        String encryptedPassword = SHA256.hashPassword(password);
        daoUser.updatePassword(encryptedPassword, tokenForgetPassword.getUserId());
        daoToken.updateStatus(tokenForgetPassword);

        //save user in session and redirect to home
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
