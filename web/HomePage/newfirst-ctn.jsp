<%@page import="java.util.List"%>
<%@ page import="Database.ConnectionDB" %>
<%@ page import="Model.Trailer" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    List<Trailer> trailerList = ConnectionDB.getListTrailer();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./HomePage/rightcontent.css">
    <title>FirstContent</title>
</head>
<body>
<div class="HomePage-firstcontent row">
    <div class="HomePage-leftcontent col-md-8">
        <div class="Leftcontent-recommendedmovie">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                <div class="carousel-inner">
                    <% 
                    boolean firstItem = true;
                    for (Trailer t : trailerList) {
                    %>
                    <div class="carousel-item <%= firstItem ? "active" : "" %>">
                        <img class="img-slide big-img-first" src=<%= t.getImgBia()%> alt="Slide">
                        <div class="slide-model-trailer img-child-slide">
                            <img src="<%= t.getImgUrl() %>">
                            <a href="https://www.facebook.com/lovelifeloveuu/">
                                <div class="child-action">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-play-circles btn-play btn-play-first" viewBox="0 0 16 16">
                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                                        <path d="M6.271 5.055a.5.5 0 0 1 .52.038l3.5 2.5a.5.5 0 0 1 0 .814l-3.5 2.5A.5.5 0 0 1 6 10.5v-5a.5.5 0 0 1 .271-.445"/>
                                    </svg>
                                    <div class="child-action-description">
                                        <span class="while-font title-film"><%= t.getMovieID().getTitle() %></span><br>
                                        <span class="while-font trailer-film"><%= t.getMovieID().getPlot() %></span><br>
                                        <a class="child-action-reaction while-font" href="#">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
                                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.56.56 0 0 0-.163-.505L1.71 6.745l4.052-.576a.53.53 0 0 0 .393-.288L8 2.223l1.847 3.658a.53.53 0 0 0 .393.288l4.052.575-2.906 2.77a.56.56 0 0 0-.163.506l.694 3.957-3.686-1.894a.5.5 0 0 0-.461 0z"/>
                                            </svg>
                                        </a>
                                        <a class="child-action-reaction while-font" href="#">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <% 
                    firstItem = false;
                    }
                    %>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
    <div class="HomePage-rightcontent col-md-4">
                <div class="main-right">
                    <div class="mainr-title">
                        Up next
                    </div>
                    <div class="mainr-info" style="color: #fff">
                        <% 
                    
                    int count = 0;
                    for (Trailer t : trailerList) {
                        if (count >= 3) break; // Limit to 3 trailers
                    %>
         <div class="mainr-information">
                            <div class="mainr-information-img">
                                <img src=
                                        <%=t.getImgUrl() %>
                                     alt="">
                            </div>  
                            <div class="mainr-information-dt">  
                                <div class="play-button">
                                    <div class="triangle"></div>
                                </div>       
                                <div class="mainr-information-details no-wrap">
                                    <%=t.getMovieID().getTitle()%><br>
                                    <span class="gray-text">Watch the trailer</span>
                                </div>

                                <div class="reactions">
                                    <span class="reaction">
                                        <i class="fas fa-smile"></i> 475
                                    </span>
                                    <span class="reaction">
                                        <i class="fas fa-laugh"></i> 225
                                    </span>
                                </div>


                            </div>
                        </div>
                                    
        <%count++; } %>
<!--                        <div class="mainr-information">
                            <div class="mainr-information-img">
                                <img src="https://m.media-amazon.com/images/M/MV5BYzAzZDUwMDktN2I5YS00MTFlLWEwOTQtMTMxNGRhM2U2NmI4XkEyXkFqcGdeQXVyMzk0NzQ5MjU@._V1_QL75_UX280_CR0,0,280,414_.jpg" alt="">
                            </div>  
                            <div class="mainr-information-dt">  
                                <div class="play-button">
                                    <div class="triangle"></div>
                                </div>       
                                <div class="mainr-information-details no-wrap">
                                    5 Summer Movies We Can't Wait For<br>
                                    <span class="gray-text">'Deadpool & Wolverine' and More</span>
                                </div>
                                <div class="reactions">
                                    <span class="reaction">
                                        <i class="fas fa-surprise"></i> 106
                                    </span>
                                    <span class="reaction">
                                        <i class="fas fa-grin"></i> 457
                                    </span>
                                </div>



                            </div>
                        </div>
                        <div class="mainr-information">
                            <div class="mainr-information-img">
                                <img src="https://m.media-amazon.com/images/M/MV5BMTcyYjc5NTMtMDIxZC00MjM4LWI3ZWEtOTVkOWEwNDEyN2M3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg" alt="">
                            </div>  
                            <div class="mainr-information-dt">  
                                <div class="play-button">
                                    <div class="triangle"></div>
                                </div>       
                                <div class="mainr-information-details no-wrap">
                                    Get Into Character With Anya<br>
                                    <span class="gray-text">The 'Furiousa' Stars Reveal Their On-Set </span>
                                </div>
                                <div class="reactions">
                                    <span class="reaction">
                                        <i class="fas fa-thumbs-up"></i> 258
                                    </span>
                                    <span class="reaction">
                                        <i class="fas fa-heart"></i> 196
                                    </span>
                                </div>



                            </div>
                        </div>-->
                       
                    </div>
                </div>
            </div>
</div>
</body>
</html>
