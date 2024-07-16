package Controller;

import Database.ConnectionDB;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "WatchList", urlPatterns = {"/WatchList"})
public class WatchList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("HomePage/WatchList.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userID = Integer.parseInt(request.getParameter("userID"));
        int movieID = Integer.parseInt(request.getParameter("movieID"));
        
        try {
            boolean added = ConnectionDB.addToWatchList(userID, movieID);
            if (added) {
                response.sendRedirect("HomePage/WatchList.jsp"); // Redirect to watchlist page on success
            } else {
                response.getWriter().println("Failed to add movie to watchlist."); // Display error message if not added
            }
        } catch (Exception ex) {
            Logger.getLogger(WatchList.class.getName()).log(Level.SEVERE, "Error adding movie to watchlist", ex);
            response.getWriter().println("Failed to add movie to watchlist. Please try again later."); // Handle exception
        }
    }

    @Override
    public String getServletInfo() {
        return "WatchList Servlet";
    }
}
