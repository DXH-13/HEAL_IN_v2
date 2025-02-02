package controller;

import dao.DAOCart;
import dao.DAOProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Vector;
import model.Product;
import model.User;

/**
 *
 * @author dangx
 */
@WebServlet(name = "LandingController", urlPatterns = {"/landing"})
public class LandingController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet landingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet landingController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        if (userLogin != null) {
            DAOCart daoCart = new DAOCart();
            int productInCart = daoCart.getProductCountByUserId(userLogin.getNormalUserId());
            request.setAttribute("productInCart", productInCart);
        }
        DAOProduct daoProduct = new DAOProduct();
        Vector<Product> product = daoProduct.getAllProduct();
        request.setAttribute("productData", product);
        request.getRequestDispatcher("landing-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
