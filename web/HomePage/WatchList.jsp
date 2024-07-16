<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="Database.ConnectionDB" %>
<%@ page import="Model.Movie" %>
<%@ page import="Model.Trailer" %>
<%
    // Assuming userID is available in session or passed as parameter
    int userID = 3; // Replace with actual user ID retrieval logic
    
    // Retrieve data from DB
    List<Trailer> trailerList = null;
    List<Movie> watchlist = null;
    try {
        trailerList = ConnectionDB.getListTrailer();
        watchlist = ConnectionDB.getAllWatchList(userID);
    } catch (Exception e) {
        // Handle exception or log error
        out.println("Error retrieving data: " + e.getMessage());
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Watchlist</title>
    <!-- Add your CSS includes here -->
</head>
<body>
<div class="container">
    <h2>Watchlist</h2>
    <div class="row">
        <div class="col">
            <div class="row">
                <% if (watchlist != null && !watchlist.isEmpty()) {
                    for (Movie movie : watchlist) { %>
                        <div class="col-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"><%= movie.getTitle() %></h5>
                                    <p class="card-text"><%= movie.getPlot() %></p>
                                    <form action="removeFromWatchlist.jsp" method="post">
                                        <input type="hidden" name="userID" value="<%= userID %>">
                                        <input type="hidden" name="movieID" value="<%= movie.getMovieID() %>">
                                        <button type="submit" class="btn btn-danger">Remove from Watchlist</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                <%  }
                    } else { %>
                        <p>No movies found in your watchlist.</p>
                <% } %>
            </div>
        </div>
    </div>
    
    <!-- Form to add movies to watchlist -->
    <h3>Add to Watchlist</h3>
    <form action="WatchList" method="post">
        <input type="hidden" name="userID" value="<%= userID %>">
        <div class="form-group">
            <label for="movieID">Movie ID:</label>
            <input type="text" class="form-control" id="movieID" name="movieID" placeholder="Enter Movie ID">
        </div>
        <button type="submit" class="btn btn-success">+ Add to Watchlist</button>
    </form>
</div>
</body>
</html>
