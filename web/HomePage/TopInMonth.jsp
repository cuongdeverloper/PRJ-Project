<%@ page import="java.util.List" %>
<%@ page import="Database.ConnectionDB" %>
<%@ page import="Model.Trailer" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    List<Trailer> trailerList = ConnectionDB.getListTrailer(); // Replace with your actual method to get trailers
    int userID = 3; // Replace with actual user ID retrieval logic
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Top in month</title>
    <link rel="stylesheet" href="./HomePage/TopInMonth.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
    <script src="./HomePage/TopInMonth.js"></script>
</head>
<body>
    <div class="row">
        <div class="col-12 header-cele">
            <span class="bar"></span>
            <h3>Top In Month ></h3>
            <span class="arrow"></span>
        </div>
        <div class="col">
            <div class="col-12 text-right div-btn-moving">
                <a class="btn btn-primary mb-3 mr-1 btn-featured bbb_viewed_nav bbb_viewed_prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="btn btn-primary mb-3 btn-featured bbb_viewed_nav bbb_viewed_next" href="#carouselExampleIndicators3" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
            <div class="bbb_viewed_slider_container">
                <div class="owl-carousel owl-theme bbb_viewed_slider">
                    <% 
                        int count = 0;
                        for (Trailer t : trailerList) {
                            if (count >= 5) break;
                    %>
                    <div class="card">
                        <div class="hoverImg">
                            <img class="img-fluid" alt="100%x280" src="<%= t.getImgBia() %>">
                            <a href="./movieDetail?id=<%=t.getMovieID().getMovieID()%>">
                                <div class="seePlay"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <span class="icon-star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill text-warning" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <%= t.getMovieID().getRating() %>
                                <button class="btn-rating">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
                                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73z"/>
                                    </svg>
                                </button>
                            </span>
                                <div class="card-text-div">
                                   <%= t.getMovieID().getTitle() %>
                                </div>
                            
                                   <form action="WatchList" method="post">
                                       <input type="hidden" name="userID" value="<%= userID%>">
                                       <input type="hidden" name="movieID" value="<%= t.getMovieID().getMovieID()%>">
                                       <button type="submit" class="btn btn-watchlist">+ Watchlist</button>
                                   </form>



                            <div class="card-footer">
                                <button class="btn" type="button" onclick="location.href='<%= t.getVideoUrl() %>'">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-play-fill" viewBox="0 0 16 16">
                                        <path d="m11.596 8.697-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393"/>
                                    </svg>
                                    Trailer
                                </button>
                                <button class="btn">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                                        <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0M7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0z"/>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </div>
                    <% 
                        count++;
                    }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
