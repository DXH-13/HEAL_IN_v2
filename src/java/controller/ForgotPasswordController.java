package controller;

import dao.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.TokenForgetPassword;
import model.User;
import utils.SendMail;

/**
 *
 * @author dangx
 */
@WebServlet(name = "ForgotPasswordController", urlPatterns = {"/forgotpassword"})
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

        DAOUser daoUser = new DAOUser();
        User user = daoUser.findByEmail(email);
        if (user == null) {
            request.setAttribute("errorEmailNotFound", "Email not found.");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        } else {
            User user1 = daoUser.checkActiveAccount(user.getEmail(), user.getPassword());
            if (user1 == null){
                request.setAttribute("errorEmailNotFound", "Your account has been locked. Please contact support for assistance.");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            }
            else{
                
                SendMail service = new SendMail();
                String token = service.generateToken();
                String linkReset = "http://localhost:9999/HEAL_IN_v2/resetpassword?token=" + token;
                TokenForgetPassword tokenForget = new TokenForgetPassword(user.getId(), token, service.expiredDateTime(), false);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
