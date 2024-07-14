<%@page import="Database.ConnectionDB"%>
<%@page import="java.util.List"%>
<%@page import="Model.Trailer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Trailer> top10Movies = ConnectionDB.getTopTenMovies();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Top in month</title>
        <link rel="stylesheet" href="./HomePage/topnews.css">

    </head>
    <body>


        <section class="pt-5 pb-5">
            <div class="header-featured">
                <span class="bar"></span>
                <h3 class="Topnews-title">Top News ></h3>
                <span class="arrow"></span>
            </div>
            <div class="topnews-container">
                <div class="row">
                    <div class="col-12 text-right mb-3 div-btn-moving">
                        <a class="btn btn-primary btn-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
                            <i class="fa fa-arrow-left"></i>
                        </a>
                        <a class="btn btn-primary btn-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
                            <i class="fa fa-arrow-right"></i>
                        </a>
                    </div>
                    <div class="col-12">
                        <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">    
                                <%
                                    boolean firstItem = true;
                                    for (Trailer t : top10Movies) {
                                %>
                                <div class="carousel-item <%= firstItem ? "active" : ""%>">
                                    <div class="grid">
                                        <div class="g-col-4">
                                            <div class="card-topnews">
                                                <div class="topnew-img">
                                                    <img class="img-fluid" alt="Movie Thumbnail" src="https://m.media-amazon.com/images/M/MV5BYzEyNTk1Y2EtODQ1YS00MGI1LWI3ZTQtODdkMzc3MjZkZTdmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg">
                                                    <a href="https://www.facebook.com/lovelifeloveuu/" class="a-img">
                                                        <div class="seePlay seePlay-featured"></div>
                                                    </a>
                                                </div>
                                                <div class="topnew-body">
                                                    <div class="topnew-body-content">
                                                        Box Office: ‘Despicable Me 4’ Ignites July Fourth Holiday Moviegoing With $27 Million Debut
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="g-col-4">
                                            <div class="card-topnews">
                                                <div class="topnew-img">
                                                    <img class="img-fluid" alt="Movie Thumbnail" src="https://m.media-amazon.com/images/M/MV5BYzEyNTk1Y2EtODQ1YS00MGI1LWI3ZTQtODdkMzc3MjZkZTdmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg">
                                                    <a href="https://www.facebook.com/lovelifeloveuu/" class="a-img">
                                                        <div class="seePlay seePlay-featured"></div>
                                                    </a>
                                                </div>
                                                <div class="topnew-body">
                                                    <div class="topnew-body-content">
                                                        News title content bla bla bla bla bla bla bla bla bal
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="g-col-4">
                                            <div class="card-topnews">
                                                <div class="topnew-img">
                                                    <img class="img-fluid" alt="Movie Thumbnail" src="https://m.media-amazon.com/images/M/MV5BYzEyNTk1Y2EtODQ1YS00MGI1LWI3ZTQtODdkMzc3MjZkZTdmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg">
                                                    <a href="https://www.facebook.com/lovelifeloveuu/" class="a-img">
                                                        <div class="seePlay seePlay-featured"></div>
                                                    </a>
                                                </div>
                                                <div class="topnew-body">
                                                    <div class="topnew-body-content">
                                                        News title content bla bla bla bla bla bla bla bla bal
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                

                                <%
                                        firstItem = false;
                                    }
                                %>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>