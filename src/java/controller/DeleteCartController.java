package controller;

import dao.DAOCart;
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
public class DeleteCartController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteCartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteCartController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        DAOCart daoCart = new DAOCart();
        boolean isDeleted = daoCart.deleteCart(userLogin.getNormalUserId(), productId);
        float updatedTotal = daoCart.getCartTotal(userLogin.getNormalUserId());
        int updatedProductCount  = daoCart.getProductCountByUserId(userLogin.getNormalUserId()); 
        if (isDeleted) {
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": true, \"updatedProductCount\": " + updatedProductCount + ", \"updatedTotal\": " + updatedTotal + "}");
        } else {
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false}");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
