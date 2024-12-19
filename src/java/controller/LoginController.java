package controller;

import dao.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import utils.SHA256;

/**
 *
 * @author dangx
 */
@WebServlet(name = "LoginController", urlPatterns = {"/log_in"})
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String rem = request.getParameter("remember_me");
        String encryptedPassword = SHA256.hashPassword(pass);

        DAOUser daoUser = new DAOUser();
        User user = daoUser.checkExistAccount(email, encryptedPassword);

        if (user == null) {
            request.setAttribute("errorWrongInforLogin", "Incorrect email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            User user2 = daoUser.checkActiveAccount(email, encryptedPassword);
            if (user2 == null) {
                request.setAttribute("errorWrongInforLogin", "Your account has been locked. Please contact support for assistance.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                Cookie cEmail = new Cookie("cemail", email);
                Cookie cPass = new Cookie("cpass", pass);
                Cookie cRem = new Cookie("crem", rem);

                if (rem != null) {
                    cEmail.setMaxAge(60 * 60 * 24 * 7); // 7 ngày
                    cPass.setMaxAge(60 * 60 * 24 * 7); // 7 ngày
                } else {
                    cEmail.setMaxAge(0);
                    cPass.setMaxAge(0);
                    cRem.setMaxAge(0);
                }
                response.addCookie(cEmail);
                response.addCookie(cPass);
                response.addCookie(cRem);

                // Kiểm tra idRole của người dùng
                if ("admin".equals(user.getAccountType())) {
                    session.setAttribute("userLogin", user);
                    response.sendRedirect("admin");
                } else {
                    session.setAttribute("userLogin", user);
                    response.sendRedirect("landing?id=" + user.getId());
                }
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
