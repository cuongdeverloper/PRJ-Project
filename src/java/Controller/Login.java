/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Database.ConnectionDB;
import Model.User;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author 1
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
        RequestDispatcher rd = request.getRequestDispatcher("Log/form.html");
        rd.forward(request, response);
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
        String method = request.getParameter("method");
        if (method.equals("login")) {
            String Email = request.getParameter("Email");
            String Password = request.getParameter("Password");
            System.out.println("email " + Email + "password " + Password);
            User c = ConnectionDB.getLogin(Email, Password);

            if (c != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", c);
                Cookie cookie = new Cookie("UserID", "" + c.getUserID());
                cookie.setMaxAge(24 * 60 * 60);
                response.addCookie(cookie);
                response.sendRedirect("/Group_Projevt/home");
            } else {
                response.sendRedirect("/Group_Projevt/Login");
            }
        } else if (method.equals("signup")) {
            String Email = request.getParameter("Email");
            String Password = request.getParameter("Password");
            String UserName = request.getParameter("UserName");
            User c = ConnectionDB.getSignUp(Email, Password, UserName);
            if (c != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", c);
                Cookie cookie = new Cookie("UserID", "" + c.getUserID());
                cookie.setMaxAge(24 * 60 * 60);
                response.addCookie(cookie);
                response.sendRedirect("/Group_Projevt/home");
            } else {
                response.sendRedirect("/Group_Projevt/Login");
            }
        } else if (method.equals("logout")) {
            Cookie[] cookies = request.getCookies(); // Retrieve all cookies from the request

            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("UserID")) { // Replace "yourCookieName" with the name of the cookie you want to delete
                        cookie.setMaxAge(0); // Set the cookie's maximum age to 0, effectively deleting it
                        cookie.setPath("/"); // Set the cookie's path to match the path used when creating the cookie
                        response.addCookie(cookie); // Add the updated cookie to the response
                        break;
                    }
                }
            }
            HttpSession session = request.getSession(false); // Retrieve the session without creating a new one if it doesn't exist

            if (session != null) {
                session.invalidate(); // Invalidate the session
            }
            response.sendRedirect("/Group_Projevt/home");
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
