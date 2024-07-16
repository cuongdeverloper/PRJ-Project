/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Database.ConnectionDB;
import Model.Actor;
import Model.Director;
import Model.Trailer;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author baook
 */
@WebServlet(name = "movieDetail", urlPatterns = {"/movieDetail"})
public class movieDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        List<Trailer> listdetailmovie = ConnectionDB.getTrailerByMovieId(id);
        session.setAttribute("listdetailmovie", listdetailmovie);
        List<Director> listdirect = ConnectionDB.getDirectorNameByMovieId(id);
        session.setAttribute("listdirect", listdirect);
        List<String> lang = ConnectionDB.getLanguagesByMovieId(id);
        session.setAttribute("lang", lang);
        List<String> genre = ConnectionDB.getGenreNamesByMovieId(id);
        session.setAttribute("genre", genre);
        List<Actor> listac = ConnectionDB.getActorsByMovieId(id);
        session.setAttribute("listac", listac);
        List<Trailer> list6 = ConnectionDB.get6RandomMovies();
        session.setAttribute("list6", list6);
        List<String> imgPhoto = ConnectionDB.getImgBiaLinksByMovieId(id);
        session.setAttribute("imgPhoto", imgPhoto);
        RequestDispatcher rd = request.getRequestDispatcher("/ReviewPage.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
