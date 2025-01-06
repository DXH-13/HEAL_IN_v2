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
import utils.GoogleLogin;
import utils.SHA256;

/**
 *
 * @author dangx
 */
@WebServlet(name = "LoginController", urlPatterns = {"/log_in"})

public class LoginController extends HttpServlet {

    private DAOUser daoUser = new DAOUser();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String loginType = request.getParameter("loginType");
        System.out.println("para:login type" + loginType);
        if ("google".equals(loginType)) {
            // Xử lý đăng nhập bằng Google
            handleGoogleLogin(request, response);
        } else {
            // Chuyển tiếp đến trang đăng nhập thông thường
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Xử lý đăng nhập thông thường
        handleRegularLogin(request, response);
    }

    private void handleGoogleLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String code = request.getParameter("code");
            System.out.println("para code: "+code);
            if (code == null || code.isEmpty()) {
                response.sendRedirect("login.jsp");
                return;
            }

            GoogleLogin gg = new GoogleLogin();
            String accessToken = gg.getToken(code);
            User user = gg.getUserInfo(accessToken);
            System.out.println("Google User: " + user);

            String userEmail = user.getEmail();
            String userFirstName = user.getFirstName();
            String userGivenName = user.getGivenName();
            String userFamilyName = user.getFamilyName();
            String userImage = user.getImage();
            String userGoogleId = user.getGoogleId();
            String userName = user.getName();
            int isUserGmailVerified = user.isVerifiedEmail() ? 1 : 0;
            
            User userF = daoUser.findByEmail(userEmail);
            if(userF == null){
                daoUser.insertGmailUser(userEmail, userFirstName, userGivenName,
                    userFamilyName, userImage, userGoogleId, userName, isUserGmailVerified);

            // Đăng nhập thành công
            HttpSession session = request.getSession();
            session.setAttribute("userLogin", user);
            response.sendRedirect("landing?id=" + user.getNormalUserId());
            }else{
                
            }

            daoUser.insertGmailUser(userEmail, userFirstName, userGivenName,
                    userFamilyName, userImage, userGoogleId, userName, isUserGmailVerified);

            // Đăng nhập thành công
            HttpSession session = request.getSession();
            session.setAttribute("userLogin", user);
            response.sendRedirect("landing?id=" + user.getNormalUserId());
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp");
        }
    }

    private void handleRegularLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String rem = request.getParameter("remember_me");
        String encryptedPassword = SHA256.hashPassword(pass);

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
                handleLoginCookies(request, response, email, pass, rem);

                HttpSession session = request.getSession();
                session.setAttribute("userLogin", user);

                // Chuyển hướng dựa trên vai trò người dùng
                if ("admin".equals(user.getAccountType())) {
                    response.sendRedirect("admin");
                } else {
                    response.sendRedirect("landing?id=" + user.getNormalUserId());
                }
            }
        }
    }

    private void handleLoginCookies(HttpServletRequest request, HttpServletResponse response,
                                    String email, String pass, String rem) {
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
    }

    @Override
    public String getServletInfo() {
        return "Login Controller Servlet";
    }
}






//public class LoginController extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet LoginController</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.getRequestDispatcher("login.jsp").forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        String loginType = request.getParameter("loginType");
//        System.out.println(loginType);
//
//        DAOUser daoUser = new DAOUser();
//
//        if ("google".equals(loginType)) {
//            //dang nhap bang google
//            String code = request.getParameter("code");
//            GoogleLogin gg = new GoogleLogin();
//            String accessToken = gg.getToken(code);
//            User user = gg.getUserInfo(accessToken);
//            System.out.println(user);
//
//            String userEmail = user.getEmail();
//            String userFirstName = user.getFirstName();
//            String userGivenName = user.getGivenName();
//            String userFamilyName = user.getFamilyName();
//            String userImage = user.getImage();
//            String userGoogleId = user.getGoogleId();
//            String userName = user.getName();
//            int isUserGmailVerified = user.isVerifiedEmail() ? 1 : 0;
//
//            daoUser.insertGmailUser(userEmail, userFirstName, userGivenName,
//                    userFamilyName, userImage, userGoogleId, userName, isUserGmailVerified);
//        } else {
//            //dang nhap thong thuong
//            HttpSession session = request.getSession();
//            String email = request.getParameter("email");
//            String pass = request.getParameter("password");
//            String rem = request.getParameter("remember_me");
//            String encryptedPassword = SHA256.hashPassword(pass);
//            User user = daoUser.checkExistAccount(email, encryptedPassword);
//            if (user == null) {
//                request.setAttribute("errorWrongInforLogin", "Incorrect email or password.");
//                request.getRequestDispatcher("login.jsp").forward(request, response);
//            } else {
//                User user2 = daoUser.checkActiveAccount(email, encryptedPassword);
//                if (user2 == null) {
//                    request.setAttribute("errorWrongInforLogin", "Your account has been locked. Please contact support for assistance.");
//                    request.getRequestDispatcher("login.jsp").forward(request, response);
//                } else {
//                    Cookie cEmail = new Cookie("cemail", email);
//                    Cookie cPass = new Cookie("cpass", pass);
//                    Cookie cRem = new Cookie("crem", rem);
//
//                    if (rem != null) {
//                        cEmail.setMaxAge(60 * 60 * 24 * 7); // 7 ngày
//                        cPass.setMaxAge(60 * 60 * 24 * 7); // 7 ngày
//                    } else {
//                        cEmail.setMaxAge(0);
//                        cPass.setMaxAge(0);
//                        cRem.setMaxAge(0);
//                    }
//                    response.addCookie(cEmail);
//                    response.addCookie(cPass);
//                    response.addCookie(cRem);
//
//                    // Kiểm tra idRole của người dùng
//                    if ("admin".equals(user.getAccountType())) {
//                        session.setAttribute("userLogin", user);
//                        response.sendRedirect("admin");
//                    } else {
//                        session.setAttribute("userLogin", user);
//                        response.sendRedirect("landing?id=" + user.getId());
//                    }
//                }
//            }
//        }
//
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
