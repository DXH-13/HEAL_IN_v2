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
public class ProfileUserController extends HttpServlet {
    
    DAOUser daoUSer = new DAOUser();

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
        User user = daoUSer.findByID(userLogin.getNormalUserId());
        request.setAttribute("userLogin", user);
        request.getRequestDispatcher("profile-user.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");
        String gender = request.getParameter("gender");
        String dateOrBirth = request.getParameter("dateorbirth");
        
        User userF1 = daoUSer.findByUsername(username);
        User userF2 = daoUSer.findByEmail(email);
        User userF3 = daoUSer.findByPhoneNumber(phoneNumber);
        
        User updatedUser = new User();
        updatedUser.setUsername(username);
        updatedUser.setName(name);
        updatedUser.setEmail(email);
        updatedUser.setPhoneNumber(phoneNumber);
        updatedUser.setGender(gender);
        updatedUser.setDateOfBirth(dateOrBirth);
        updatedUser.setNormalUserId(userLogin.getNormalUserId());
        
        if (userF1 != null || userF2 != null || userF3 != null) {
            //thong bao loi
            request.getRequestDispatcher("profile-user.jsp").forward(request, response);
        } else {
            daoUSer.updateUserProfile(updatedUser);
            //thongbao update thanh cong
            request.getRequestDispatcher("profile-user.jsp").forward(request, response);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
