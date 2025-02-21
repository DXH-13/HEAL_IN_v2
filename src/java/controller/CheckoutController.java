package controller;

import dao.DAOCart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.CartXProduct;
import model.User;

/**
 *
 * @author dangx
 */
public class CheckoutController extends HttpServlet {

    DAOCart daoCart = new DAOCart();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckoutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutController at " + request.getContextPath() + "</h1>");
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
            int productInCart = daoCart.getProductCountByUserId(userLogin.getNormalUserId());
            request.setAttribute("productInCart", productInCart);
        }
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        System.out.println("User in session: " + userLogin);

        if (userLogin != null) {
            int productInCart = daoCart.getProductCountByUserId(userLogin.getNormalUserId());
            request.setAttribute("productInCart", productInCart);
        }

        String[] selectedProducts = request.getParameterValues("selectedProducts");
        List<CartXProduct> cartList = new ArrayList<>();

        if (selectedProducts != null) {
            for (String cartId : selectedProducts) {
                System.out.println("Cart ID: " + cartId);
                CartXProduct cartXProduct = daoCart.getAllCartById(cartId);
                if (cartXProduct != null) {
                    cartList.add(cartXProduct);
                }
            }
        }
        System.out.println(cartList);
        request.setAttribute("cartBuy", cartList);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
