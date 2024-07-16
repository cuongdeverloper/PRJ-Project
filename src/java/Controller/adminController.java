
package Controller;

import Model.Director;
import Model.Genre;
import Model.Movie;
import Model.User;
import dao.MovieDAO;
import dao.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet(name = "adminController", urlPatterns = {"/adminController"})
public class adminController extends HttpServlet {
    private MovieDAO movieDAO;
    private UserDAO userDAO;
        


    @Override
    public void init() throws ServletException {
        super.init();
        movieDAO = new MovieDAO();
        userDAO = new UserDAO();

    }
  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        String action = request.getParameter("action");

        if (action == null) {
            action = "listMovies"; // Default action
        }

        switch (action) {
            case "listMovies":
                listMovies(request, response);
                break;
            case "addMovies":
                showAddFormMovies(request, response);
                break;
            case "editMovies":
                showEditFormMovies(request, response);
                break;
            case "deleteMovies":
                deleteMovie(request, response);
                break;
            case "listUsers":
                listUsers(request, response);
                break;   
            case "deleteUsers":
                deleteUser(request, response);
                break;
            case "addUsers":
            {
                try {
                    showAddFormUser(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(adminController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
                break;

            case "editUsers":
            {
                try {
                    showEditFormUser(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(adminController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
                break;    
    
            default:
                listMovies(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "listMovies"; // Default action
        }

        switch (action) {
            case "addMovies":
                addMovie(request, response);
                break;
            case "updateMovies":
                updateMovie(request, response);
                break;
            case "addUsers":
            {
                try {
                    addUser(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(adminController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
                break;

            case "updateUsers":
            {
                try {
                    updateUser(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(adminController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
                break;

            default:
                listMovies(request, response);
        }
    }

    private void listMovies(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession();
        List<Movie> movies = movieDAO.getAllMovies();
        session.setAttribute("movieslist", movies);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/listMovie.jsp");
        rd.forward(request, response);
    }


    private void showAddFormMovies(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         HttpSession session = request.getSession();
         List<Movie> movies = movieDAO.getAllMovies();
        session.setAttribute("movieslist", movies);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/addMovie.jsp");
        rd.forward(request, response);
    }

         private void showEditFormMovies(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {     
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        
             String id = request.getParameter("query");
         HttpSession session = request.getSession();
        Movie movie = movieDAO.getMovieById(id);
        session.setAttribute("movieById", movie);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/editMovie.jsp");
        rd.forward(request, response);
    }
           
private void addMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();

    String title = request.getParameter("title");
    String releaseTime = request.getParameter("releaseTime");
    String plot = request.getParameter("plot");
    int directorId = Integer.parseInt(request.getParameter("director"));
    int genreId = Integer.parseInt(request.getParameter("genre"));
    String movieLength = request.getParameter("movieLength");
    float rating = Float.parseFloat(request.getParameter("rating"));
    String certificate = request.getParameter("certificate");
    String imgUrl = request.getParameter("imageUrl");
    String imgBia = request.getParameter("imageBia");
    String imgPhoto = request.getParameter("imagePhoto");
    String videoUrl = request.getParameter("trailer");

    Movie movie = new Movie();
    movie.setTitle(title);
    movie.setRealaseTime(releaseTime);
    movie.setPlot(plot);
    movie.setDirectorID(new Director(directorId));
    movie.setGenreID(new Genre(genreId));
    movie.setMovieLength(movieLength);
    movie.setRating(rating);
    movie.setCertificate(certificate);

    MovieDAO movieDAO = new MovieDAO();
    int movieID = movieDAO.addMovie(movie, imgUrl, imgBia, imgPhoto, videoUrl);

    if (movieID != -1) {
        List<Movie> movies = movieDAO.getAllMovies();
        session.setAttribute("movieslist", movies);
        response.sendRedirect(request.getContextPath() + "/adminController?action=listMovies");
    } else {
        request.setAttribute("errorMessage", "Failed to add movie.");
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/listMovie.jsp");
        rd.forward(request, response);
    }
}

    


private void updateMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("query"));
        String title = request.getParameter("title");
        String releaseTime = request.getParameter("realaseTime");
        String plot = request.getParameter("plot");
        String movieLength = request.getParameter("movieLength");
        float rating = Float.parseFloat(request.getParameter("rating"));
        String certificate = request.getParameter("certificate");

        int directorId = 1;

        if (request.getParameter("director") != null && !request.getParameter("director").isEmpty()) {
            directorId = Integer.parseInt(request.getParameter("director"));
        } else {
        }

        Movie movie = new Movie(id, new Director(directorId), new Genre(1), title, releaseTime, plot, movieLength, rating, certificate);

        MovieDAO movieDAO = new MovieDAO();
        boolean updated = movieDAO.updateMovie(movie);

        if (updated) {
              List<Movie> movies = movieDAO.getAllMovies();
        session.setAttribute("movieslist", movies);
            response.sendRedirect(request.getContextPath() + "/adminController?action=listMovies");
        } else {
            response.sendRedirect(request.getContextPath() + "/adminController?action=listMovies");
        }
    } catch (NumberFormatException e) {
        e.printStackTrace();
        response.sendRedirect(request.getContextPath() + "/adminController?action=listMovies");
    }
}

    

    private void deleteMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("query");
        movieDAO.deleteMovie(id);
        response.sendRedirect(request.getContextPath() + "/adminController?action=listMovies");
    }
    

 private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         HttpSession session = request.getSession();
          List<User> users = null;
     try {
            users = userDAO.getAll();
        } catch (Exception ex) {
            Logger.getLogger(adminController.class.getName()).log(Level.SEVERE, null, ex);
        }
         session.setAttribute("userslist", users);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/listUser.jsp");
        rd.forward(request, response);
    }



    private void showAddFormUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, Exception {
         HttpSession session = request.getSession();
         List<User> users = userDAO.getAll();
        session.setAttribute("userslist", users);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/addUser.jsp");
        rd.forward(request, response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception {
HttpSession session = request.getSession();
        String userName = request.getParameter("fullName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        int priority = Integer.parseInt(request.getParameter("priority"));

        User newUser = new User( userName, password, email, priority);

        userDAO.insert(newUser);
         List<User> users = null;
     try {
            users = userDAO.getAll();
        } catch (Exception ex) {
            Logger.getLogger(adminController.class.getName()).log(Level.SEVERE, null, ex);
        }
         session.setAttribute("userslist", users);

        RequestDispatcher rd = request.getRequestDispatcher("/Admin/listUser.jsp");
            rd.forward(request, response); 
    }

    private void showEditFormUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception {
         request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String id = request.getParameter("query");
         HttpSession session = request.getSession();
         User user = userDAO.get(id);
        session.setAttribute("userById", user);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/editUser.jsp");
        rd.forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception {
         int id = Integer.parseInt(request.getParameter("query"));
        String userName = request.getParameter("fullName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        int priority = Integer.parseInt(request.getParameter("priority"));

        User updatedUser = new User(id, userName, password, email, priority);

        userDAO.update(updatedUser);
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/listUser.jsp");
            rd.forward(request, response); 
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{       
       String id = request.getParameter("query");      
        userDAO.deleteUserById(id);
        response.sendRedirect(request.getContextPath() + "/adminController?action=listUsers");
    }


}
