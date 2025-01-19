/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
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
public class LoginExistAccountGmail extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginExistAccountGmail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginExistAccountGmail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login-exist-account.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAOUser daoUser = new DAOUser();
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        String password = request.getParameter("password");
        System.out.println("day la email: " + email );
        System.out.println("day la pass " + password);
        String encryptedPassword = SHA256.hashPassword(password);
        User user = daoUser.checkActiveAccount(email, encryptedPassword);
        if (user == null) {
            request.setAttribute("errorWrongInforLogin", "Incorrect password.");
            request.getRequestDispatcher("login-exist-account.jsp").forward(request, response);
        } else {
            User user2 = daoUser.checkActiveAccount(email, encryptedPassword);
            if (user2 == null) {
                request.setAttribute("errorWrongInforLogin", "Your account has been locked. Please contact support for assistance.");
                request.getRequestDispatcher("login-exist-account.jsp").forward(request, response);
            } else {
                session.setAttribute("userLogin", user2);
                if ("admin".equals(user2.getAccountType())) {
                    response.sendRedirect("admin");
                } else {
                    response.sendRedirect("landing?id=" + user2.getNormalUserId());
                }
            }
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
