<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, Model.Trailer, Database.ConnectionDB" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Featured Today</title>
    <link rel="stylesheet" href="./HomePage/topnews.css">
    <!-- Include Bootstrap CSS -->

</head>
<body>
    
<section class="pt-5 pb-5">
    <div class="header-cele">
        <span class="bar"></span>
        <h3>Featured today &gt;</h3>
        <span class="arrow"></span>
    </div>
    <div class="container featured-ctn">
        <div class="row">
            <div class="col-12 text-right div-btn-moving">
                <a class="btn btn-primary mb-3 mr-1 btn-featured" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="btn btn-primary mb-3 btn-featured" href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
            <div class="col-12">
                <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <% 
                            List<Trailer> featureList = ConnectionDB.getListTrailer();
                            boolean firstItem = true;
                            for (int i = 0; i < 3 && i < featureList.size(); i++) {
                                Trailer t1 = featureList.get(i);
                        %>
                        <div class="carousel-item <%= firstItem ? "active" : "" %>">
                            <div class="row">
                                <% 
                                    for (int j = 0; j < 3 && (i * 3 + j) < featureList.size(); j++) {
                                        Trailer trailer = featureList.get(i * 3 + j);
                                %>
                                <div class="col-md-4 mb-3 card-column-item">
                                    <div class="card card-featured">
                                        <div class="hoverImg">
                                            <img class="img-fluid" alt="Movie Thumbnail" src="<%= trailer.getImgUrl()%>">
                                            <a href="./movieDetail?id=<%=trailer.getMovieID().getMovieID()%>">
                                                <div class="seePlay seePlay-featured"></div>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <h4 class="card-title"><%= trailer.getMovieID().getTitle()%></h4>
                                            <p class="card-text"><%= trailer.getMovieID().getPlot()%></p>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>
                        <% 
                                firstItem = false;
                            }
                        %>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Include jQuery, Popper.js, and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
