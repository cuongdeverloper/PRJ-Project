/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Database.ConnectionDB;
import Model.Actor;
import Model.Director;
import Model.Genre;
import Model.Trailer;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "actorDetail", urlPatterns = {"/actorDetail"})
public class actorDetail extends HttpServlet {
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        
        
        List<Actor> acbyid = ConnectionDB.getActorById(id);
        session.setAttribute("acbyid", acbyid);
        
        List<Genre> gen5 = ConnectionDB.getRandomGenres();
        session.setAttribute("gen5", gen5);
 
        RequestDispatcher rd = request.getRequestDispatcher("/ActorReview.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
