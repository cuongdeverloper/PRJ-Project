<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <title>King Movie</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="HomePage.css">
        <title>HomePage</title>
    </head>

    <body>
        <div class="HomePage-container">
            <div class="HomePage-header">
                <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-container">
                    <div class="container-fluid">
                        <a class="navbar-brand title-header while-font" href="#">HOME</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active while-font" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link while-font" href="#">Recommended</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle while-font" href="#" id="navbarDropdown"
                                   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Category
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Romance</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Horror</a></li>
                                </ul>
                            </li>

                        </ul>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">

                            <form class="d-flex">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            </form>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="HomePage-body">
                <div class="HomePage-firstcontent row">
                    <div class="HomePage-leftcontent col-md-8">
                        <div class="Leftcontent-recommendedmovie">
                            <div id="carouselExampleIndicators" class="carousel slide parent-slide">
<!--                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                </div>-->
                                <div class="carousel-inner Left-slide">
                                    <div class="carousel-item active">
                                        <img class="img-slide" src="./src-img/pexels-eberhard-grossgasteiger-640781.jpg" alt="First slide">
                                        <div class="slide-model-trailer img-child-slide"> 
                                            <img src="https://m.media-amazon.com/images/M/MV5BMTQzODZjNmUtNjQxYi00MWNjLThlYWUtMjUwYzA3YzY2ZTJmXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg">                                   
                                            <div class="child-action">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-play-circles btn-play" viewBox="0 0 16 16">
                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                                                    <path d="M6.271 5.055a.5.5 0 0 1 .52.038l3.5 2.5a.5.5 0 0 1 0 .814l-3.5 2.5A.5.5 0 0 1 6 10.5v-5a.5.5 0 0 1 .271-.445"/>
                                                </svg>
                                                <span class="while-font">Bla bla film</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <img class="img-slide" src="./src-img/pexels-christian-heitz-842711.jpg" alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="img-slide" src="./src-img/pexels-eberhard-grossgasteiger-1624255.jpg" alt="Third slide">
                                    </div>
                                </div>
                                <button class="carousel-control-prev btn-prennext" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next btn-prennext" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>

                        </div>
                    </div>

                    <div class="HomePage-rightcontent col-md-4">

                    </div>
                </div>

            </div>

            <div class="HomePage-footer">

            </div>


        </div>
    </body>

</html>