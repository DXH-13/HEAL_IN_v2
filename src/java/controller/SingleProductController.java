package controller;

import dao.DAOCart;
import dao.DAOProduct;
import dao.DAOProductImages;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Vector;
import model.Cart;
import model.Product;
import model.ProductImages;
import model.User;

/**
 *
 * @author dangx
 */
public class SingleProductController extends HttpServlet {

    DAOProduct daoProduct = new DAOProduct();
    DAOProductImages daoProductImages = new DAOProductImages();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SingleProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SingleProductController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idProduct = Integer.parseInt(request.getParameter("idProduct"));
        Vector<ProductImages> images = daoProductImages.getAllProductImagesByProductId(idProduct);
        Product product = daoProduct.findByID(idProduct);
        request.setAttribute("product", product);
        request.setAttribute("images", images);
        request.getRequestDispatcher("single-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userLogin = (User) session.getAttribute("userLogin");
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        DAOCart daoCart = new DAOCart();
        Product product = daoProduct.findByID(productId);
        Vector<ProductImages> images = daoProductImages.getAllProductImagesByProductId(productId);
        boolean orderAdded = daoCart.insertOrder(userLogin.getNormalUserId(), productId, quantity);

        if (orderAdded) {
            //thong bao ok
            System.out.println("add thanh cong");
        } else {
            //thong bao loi
            System.out.println("khong add duoc");
        }
        request.setAttribute("product", product);
        request.setAttribute("images", images);
        request.getRequestDispatcher("single-product.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
