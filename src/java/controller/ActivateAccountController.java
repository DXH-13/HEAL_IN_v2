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

/**
 *
 * @author dangx
 */
public class ActivateAccountController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ActivateAccountController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ActivateAccountController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userId = request.getParameter("id");
        if (userId == null) {
            request.getRequestDispatcher("404-page.jsp").forward(request, response);
            return;
        }
        DAOUser daoUser = new DAOUser();
        int userIdNum = Integer.parseInt(request.getParameter("id"));
        User user = daoUser.findByID(userIdNum);

        if (user != null) {
            daoUser.updateActiveStatus(userIdNum);
            session.setAttribute("userLogin", user);
            response.sendRedirect("landing?id=" + user.getNormalUserId());
        } else {
            request.getRequestDispatcher("404-page.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
