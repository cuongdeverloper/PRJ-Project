/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Database.ConnectionDB;
import Model.User;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 1
 */
@WebServlet(name = "Action", urlPatterns = {"/Action"})
public class Action extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Action</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Action at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        User u = (User) request.getSession().getAttribute("user");

        List<Integer> likedList = ConnectionDB.listLikedMovies(u.getUserID()); // Giả sử phương thức này trả về danh sách số nguyên
        String likedListJson = new Gson().toJson(likedList);
        response.getWriter().write(likedListJson);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        User u = (User) request.getSession().getAttribute("user");
        int MovieID = Integer.parseInt(request.getParameter("MovieID"));
        String method = request.getParameter("method");
        if(u!= null && method != null && method.equals("unlike")){
            try {
                if(ConnectionDB.doUnlike(u.getUserID(), MovieID)){
                    response.getWriter().write("unliked");
                }else{
                    response.getWriter().write("error");
                }
            } catch (Exception ex) {
                Logger.getLogger(Action.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        }else if(u!=null && method != null && method.equals("like")){
            try {
                if(ConnectionDB.doLike(u.getUserID(), MovieID)){
                    response.getWriter().write("liked");
                }else{
                    response.getWriter().write("error");
                }
            } catch (Exception ex) {
                Logger.getLogger(Action.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
