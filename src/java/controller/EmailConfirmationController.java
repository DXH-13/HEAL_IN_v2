
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import utils.SendMail;

/**
 *
 * @author dangx
 */
@WebServlet(name = "EmailConfirmationController", urlPatterns = {"/email_confirmation"})
public class EmailConfirmationController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EmailConfirmationController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EmailConfirmationController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("email-confirmation-required.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User registeredUser = (User) request.getAttribute("registeredUser");
        String linkActive = "http://localhost:9999/HEAL_IN_v2/activate_account?id=" + registeredUser.getNormalUserId();
        SendMail service = new SendMail();
        boolean isSent;
            try {
                System.out.println("Sending email to: " + registeredUser.getEmail());
                isSent = service.sendActiveAccountMail(registeredUser.getEmail(), linkActive);
                if (!isSent) {
                    System.out.println("Failed to send email.");
                    request.setAttribute("errorEmailNotFound", "Can not send request");
                    request.getRequestDispatcher("email-confirmation-required.jsp").forward(request, response);
                    return;
                }
                System.out.println("Email sent successfully.");
                request.setAttribute("errorEmailNotFound", "We've sent an email to\n" +
"                                                            your email address:"+registeredUser.getEmail());
                request.getRequestDispatcher("email-confirmation-required.jsp").forward(request, response);
            } catch (Exception ex) {
                System.out.println("Exception occurred: " + ex.getMessage());
                ex.printStackTrace(); // Log lỗi chi tiết
                request.setAttribute("errorEmailNotFound", "Sorry we have error in server");
                request.getRequestDispatcher("email-confirmation-required.jsp").forward(request, response);
            }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
