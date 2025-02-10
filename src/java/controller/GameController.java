package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dangx
 */
public class GameController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GameController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GameController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("game.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] playerNames = request.getParameterValues("players[]");
        List<String> players = new ArrayList<>();

        if (playerNames != null && playerNames.length > 0) {
            for (String player : playerNames) {
                // Add only non-empty and non-null player names
                if (player != null && !player.trim().isEmpty()) {
                    players.add(player);
                }
            }
        }

        // Set the attribute only if there are valid players
        if (!players.isEmpty()) {
            request.setAttribute("players", players);
        }

        System.out.println(players);  // Log player names for debugging
        request.getRequestDispatcher("game.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
