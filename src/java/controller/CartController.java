package controller;

import dao.DAOCart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Vector;
import model.CartXProduct;
import model.User;

public class CartController extends HttpServlet {

    DAOCart daoCart = new DAOCart();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartController at " + request.getContextPath() + "</h1>");
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
        Vector<CartXProduct> cart = daoCart.getAllCartByUserId(userLogin.getNormalUserId());
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("cart-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        int userId = Integer.parseInt(request.getParameter("userId"));
        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        // Gọi DAO để cập nhật số lượng sản phẩm trong giỏ hàng
        daoCart.updateQuantity(userLogin.getNormalUserId(), productId, quantity);

        // Tính toán lại tổng tiền
        float productTotal = daoCart.getProductTotal(userLogin.getNormalUserId(), productId);
        float updatedTotal = daoCart.getCartTotal(userLogin.getNormalUserId());

        // Trả JSON về client
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"productTotal\": " + productTotal + ", \"updatedTotal\": " + updatedTotal + "}");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
