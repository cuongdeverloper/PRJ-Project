<%-- 
    Document   : ActorReview
    Created on : Jul 12, 2024, 8:33:59 PM
    Author     : aser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="hThanhĐTttps://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        rel="stylesheet">
    <link rel="stylesheet" href="actorreview.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

    <!--  -->

</head>

<body>

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
                        <a class="nav-link active while-font" aria-current="page" href="#">Actor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link while-font" href="#">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-warning" data-toggle="modal"
                                data-target="#exampleModalLong">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-list" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5" />
                                </svg>
                                MENU
                            </button>


                        </a>
                    </li>


                </ul>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    </form>
                </div>
            </div>
        </nav>


        <!-- Modal -->
        <div class="modal-header">
            <div class="modal fade modal-header-div" id="exampleModalLong" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">King Movie</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293z" />
                                </svg>
                            </button>
                        </div>
                        <div class="modal-body reslaptop">
                            <div class="d-flex align-items-start flex-column bd-highlight mb-3" style="height: 100%;">
                                <div class="mb-auto p-2 bd-highlight row" style="width: 100%; height: auto;">
                                    <div class="col-md-4">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                                                <path
                                                    d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm4 0v6h8V1zm8 8H4v6h8zM1 1v2h2V1zm2 3H1v2h2zM1 7v2h2V7zm2 3H1v2h2zm-2 3v2h2v-2zM15 1h-2v2h2zm-2 3v2h2V4zm2 3h-2v2h2zm-2 3v2h2v-2zm2 3h-2v2h2z" />
                                            </svg>
                                            <h4>MOVIES</h4>
                                        </span>
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Release
                                                Calendar</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top 250
                                                Movies</a>
                                            <a href="#" class="list-group-item list-group-item-action">Most Popular
                                                Movies</a>
                                            <a href="#" class="list-group-item list-group-item-action">Browse Movies by
                                                Genre</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top Box
                                                Office</a>
                                            <a href="#" class="list-group-item list-group-item-action">Showtimes &
                                                Tickets</a>
                                            <a href="#" class="list-group-item list-group-item-action">Movies News</a>
                                            <a href="#" class="list-group-item list-group-item-action">Spotlight</a>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-tv" viewBox="0 0 16 16">
                                                <path
                                                    d="M2.5 13.5A.5.5 0 0 1 3 13h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5M13.991 3l.024.001a1.5 1.5 0 0 1 .538.143.76.76 0 0 1 .302.254c.067.1.145.277.145.602v5.991l-.001.024a1.5 1.5 0 0 1-.143.538.76.76 0 0 1-.254.302c-.1.067-.277.145-.602.145H2.009l-.024-.001a1.5 1.5 0 0 1-.538-.143.76.76 0 0 1-.302-.254C1.078 10.502 1 10.325 1 10V4.009l.001-.024a1.5 1.5 0 0 1 .143-.538.76.76 0 0 1 .254-.302C1.498 3.078 1.675 3 2 3zM14 2H2C0 2 0 4 0 4v6c0 2 2 2 2 2h12c2 0 2-2 2-2V4c0-2-2-2-2-2" />
                                            </svg>
                                            <h4>TV SHOWS</h4>
                                        </span>
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">What's on TV &
                                                Streaming</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top 250 TV
                                                Shows</a>
                                            <a href="#" class="list-group-item list-group-item-action">Most Popular TV
                                                Shows</a>
                                            <a href="#" class="list-group-item list-group-item-action">Browse TV Shows
                                                by Genre</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top Box
                                                Office</a>
                                            <a href="#" class="list-group-item list-group-item-action">TV News</a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                                <path
                                                    d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z" />
                                                <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z" />
                                            </svg>
                                            <h4>AWARDS</h4>
                                        </span>
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter
                                                Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards
                                                Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival
                                                Central</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-auto p-2 d-flex bd-highlight row" style="width: 100%; height: auto;">
                                    <div class="col-md-6">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                                <path
                                                    d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z" />
                                                <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z" />
                                            </svg>
                                            <h4>AWARDS</h4>
                                        </span>
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter
                                                Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards
                                                Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival
                                                Central</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                                <path
                                                    d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z" />
                                                <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z" />
                                            </svg>
                                            <h4>AWARDS</h4>
                                        </span>
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter
                                                Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards
                                                Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival
                                                Central</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Mobile-->
                        <div class="modal-body resMobile">
                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class="accordion-item header-accor">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
                                            aria-expanded="false" aria-controls="flush-collapseOne">
                                            <span class="title-child-header">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                                                    <path
                                                        d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm4 0v6h8V1zm8 8H4v6h8zM1 1v2h2V1zm2 3H1v2h2zM1 7v2h2V7zm2 3H1v2h2zm-2 3v2h2v-2zM15 1h-2v2h2zm-2 3v2h2V4zm2 3h-2v2h2zm-2 3v2h2v-2zm2 3h-2v2h2z" />
                                                </svg>
                                                <h4>MOVIES</h4>
                                            </span>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Release
                                                Calendar</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top 250
                                                Movies</a>
                                            <a href="#" class="list-group-item list-group-item-action">Most Popular
                                                Movies</a>
                                            <a href="#" class="list-group-item list-group-item-action">Browse Movies by
                                                Genre</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top Box
                                                Office</a>
                                            <a href="#" class="list-group-item list-group-item-action">Showtimes &
                                                Tickets</a>
                                            <a href="#" class="list-group-item list-group-item-action">Movies News</a>
                                            <a href="#" class="list-group-item list-group-item-action">Spotlight</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
                                            aria-expanded="false" aria-controls="flush-collapseTwo">
                                            <span class="title-child-header">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                                                    <path
                                                        d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm4 0v6h8V1zm8 8H4v6h8zM1 1v2h2V1zm2 3H1v2h2zM1 7v2h2V7zm2 3H1v2h2zm-2 3v2h2v-2zM15 1h-2v2h2zm-2 3v2h2V4zm2 3h-2v2h2zm-2 3v2h2v-2zm2 3h-2v2h2z" />
                                                </svg>
                                                <h4>MOVIES</h4>
                                            </span>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">What's on TV &
                                                Streaming</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top 250 TV
                                                Shows</a>
                                            <a href="#" class="list-group-item list-group-item-action">Most Popular TV
                                                Shows</a>
                                            <a href="#" class="list-group-item list-group-item-action">Browse TV Shows
                                                by Genre</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top Box
                                                Office</a>
                                            <a href="#" class="list-group-item list-group-item-action">TV News</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
                                            aria-expanded="false" aria-controls="flush-collapseThree">
                                            <span class="title-child-header">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                                    <path
                                                        d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z" />
                                                    <path
                                                        d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z" />
                                                </svg>
                                                <h4>AWARDS</h4>
                                            </span>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter
                                                Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards
                                                Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival
                                                Central</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <div class="whole-site">

        <!-- headsite  -->
        <div class="head-site">
            <div class="head-site-first">
                <div class="head-site-first-title">
                    <p>Tom Hardy</p>
                    <p>Actor · Producer · Writer</p>
                </div>
                <div class="head-site-first-rating">
                    <div class="links">
                        <a href="#">Biography ·</a>
                        <a href="#">Awards ·</a>
                        <a href="#">Trivia ·</a>
                        <a href="#">FAQ ·</a>
                        <a href="#">IMDbPro ·</a>
                        <a href="#">All topics</a>
                    </div>
                    <div class="ratings">
                        <div class="imdb-rating">
                            <span class="star">&#9733;</span>
                            <span class="rating" style="color: white; font-weight: bold;">6.9</span><span
                                style="color: grey; font-size: ;">/10</span>

                        </div>
                        <div class="user-rating">
                            <span class="star-outline">&#9734;</span>
                            <a href="#" class="rate">Rate</a>
                        </div>
                        <div class="popularity">
                            <i class="fa-solid fa-film"></i>
                        </div>
                    </div>

                </div>
            </div> <!-- Closing div for head-site-first -->
            <div class="head-site-second">

                <div class="img1" style="width: 25%;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWdQntBri84rqdUT8IS4rHn_YL9GdjM_xGHg&s"
                        alt="">
                </div>
                <div class="img2"
                    style="width: 55%; overflow: hidden; border-radius: 20px; display: flex; justify-content: center; align-items: center;">
                    <iframe width="100%" height="400" src="https://www.youtube.com/embed/3NVpz6FgwOU?autoplay=1&mute=1"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen style="border-radius: 20px;"></iframe> </div>
                <div class="img3" style="width:20% ;">
                    <div class="img3-image" style="font-size: 20px;">
                        <i class="fa-solid fa-video"></i>
                        <p>26+video</p>

                    </div>
                    <div class="img3-image" style="font-size: 20px;">
                        <i class="fa-solid fa-image"></i>
                        <p>26+video</p>
                    </div>
                </div>
            </div>
            <div class="head-site-third">
                <div class="some">
                    <div class="hint" style="color: white;">
                        Animation
                    </div>
                    <div class="hint" style="color: white;">
                        Adventure
                    </div>
                    <div class="hint" style="color: white;">
                        Hornor
                    </div>
                </div>
                <div class="movie-info">
                    <p style="color: white;">With his breakthrough performance as Eames in<span> Christopher Nolan's
                            sci-fi thriller Inception (2010) </span>, English actor Tom Hardy has been brought to the
                        attention of mainstream audiences worldwide. However, the versatile actor has been steadily
                        working on both stage and screen since his television debut in the miniseries <span>Band of
                            Brothers (2001)</span>. After being cast in the World War II drama, Hardy left his studies
                        at the prestigious Drama Centre in London and was subsequently cast as Twombly in <span>Ridley
                            Scott's</span>.</p>

                    <div class="detail-row">
                        <span class="label" style="color: white; font-weight: bold;">Languages:</span>
                        <span class="label-desc" style="color: #5799EF;">English · Portuguese · Arabic · Spanish ·
                            Brazilian Sign Language</span>
                    </div>
                </div>
            </div>
        </div> <!-- Closing div for head-site -->

        <!-- tailwind 2  -->
        <div class="relative isolate overflow-hidden bg-gray-900 py-10 sm:py-10 lg:py-10"> 

            <div class="mx-auto max-w-7xl px-6 lg:px-8">
              <div class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 lg:max-w-none lg:grid-cols-2">
                <div class="max-w-xl lg:max-w-lg">
                  <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl">Subscribe to our newsletter.</h2>
                  <p class="mt-4 text-lg leading-8 text-gray-300">Nostrud amet eu ullamco nisi aute in ad minim nostrud adipisicing velit quis. Duis tempor incididunt dolore.</p>
                  <div class="mt-6 flex max-w-md gap-x-4">
                    <label for="email-address" class="sr-only">Email address</label>
                    <input 
                        id="email-address" 
                        name="email" 
                        type="email" 
                        autocomplete="email" 
                        required 
                        class="min-w-0 flex-auto rounded-md border-0 bg-white/5 px-3.5 py-2 text-black shadow-sm ring-1 ring-inset ring-white/10 focus:ring-2 focus:ring-inset focus:ring-indigo-500 sm:text-sm sm:leading-6" 
                        placeholder="Enter your email"
                    >
                    <button type="submit" class="flex-none rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-400 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500">Subscribe</button>
                </div>
                </div>
                <dl class="grid grid-cols-1 gap-x-8 gap-y-10 sm:grid-cols-2 lg:pt-2">
                  <div class="flex flex-col items-start">
                    <div class="rounded-md bg-white/5 p-2 ring-1 ring-white/10">
                      <svg class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                      </svg>
                    </div>
                    <dt class="mt-4 font-semibold text-white">Weekly articles</dt>
                    <dd class="mt-2 leading-7 text-gray-400">Non laboris consequat cupidatat laborum magna. Eiusmod non irure cupidatat duis commodo amet.</dd>
                  </div>
                  <div class="flex flex-col items-start">
                    <div class="rounded-md bg-white/5 p-2 ring-1 ring-white/10">
                      <svg class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.05 4.575a1.575 1.575 0 10-3.15 0v3m3.15-3v-1.5a1.575 1.575 0 013.15 0v1.5m-3.15 0l.075 5.925m3.075.75V4.575m0 0a1.575 1.575 0 013.15 0V15M6.9 7.575a1.575 1.575 0 10-3.15 0v8.175a6.75 6.75 0 006.75 6.75h2.018a5.25 5.25 0 003.712-1.538l1.732-1.732a5.25 5.25 0 001.538-3.712l.003-2.024a.668.668 0 01.198-.471 1.575 1.575 0 10-2.228-2.228 3.818 3.818 0 00-1.12 2.687M6.9 7.575V12m6.27 4.318A4.49 4.49 0 0116.35 15m.002 0h-.002" />
                      </svg>
                    </div>
                    <dt class="mt-4 font-semibold text-white">No spam</dt>
                    <dd class="mt-2 leading-7 text-gray-400">Officia excepteur ullamco ut sint duis proident non adipisicing. Voluptate incididunt anim.</dd>
                  </div>
                </dl>
              </div>
            </div>
            <div class="absolute left-1/2 top-0 -z-10 -translate-x-1/2 blur-3xl xl:-top-6" aria-hidden="true">
              <div class="aspect-[1155/678] w-[72.1875rem] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
            </div>
          </div>
        <!-- middle-site -->
        <div class="middle-site">

            <!-- throughtheyear done -->
            <div class="throughtheyear-moretoexplore">
                <div class="throughtheyear">
                    <div class="throughtheyear-des">
                        <h5 style="margin: 20px 0px; font-weight: bold;">Tom Hardy Through the Years</h5>
                        <p style="margin: 20px 0px; padding-right: 15px;">From his early appearances in <span>"Band of
                                Brothers"</span> to memorable roles in Inception and The Dark Knight Rises, look back
                            at<span>Tom Hardy's</span> impressive career.</p>
                        <p onclick="window.open('https://www.imdb.com/name/nm0362766/mediaviewer/rm370524672/?ref_=nm_ov_ph', '_blank');"
                            style="cursor: pointer; margin: 20px 0px; text-decoration: underline; color: #5799EF;">See
                            the full gallery</p>
                    </div>
                    <div class="throughtheyear-img">
                        <img src="https://m.media-amazon.com/images/M/MV5BMTI2NjI2ZjItNmFiZC00MjQ5LWI2YjYtOTVlMWM0NWQzYWRkXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_QL75_UX500_CR0,0,500,281_.jpg"
                            alt="">
                    </div>
                </div>
                <div class="moretoexplore">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2>More to explore </h2>
                        <span class="arrow"></span>
                    </div>
                    <div class="moretoexplore-total">
                        <div class="moretoexplore-img">
                            <img src="https://www.usmagazine.com/wp-content/uploads/2023/07/Hollywood-Gay-Power-Couples-Sarah-Paulson-Holland-Taylor-Elton-John-2.jpg?quality=86&strip=all"
                                alt="">
                        </div>
                        <div class="moretoexplore-desc">
                            <p style="padding-top: 20px;">LGBTQIA+ Power Couples of Hollywood</p>
                            <p onclick="window.open('https://www.imdb.com/name/nm0362766/mediaviewer/rm370524672/?ref_=nm_ov_ph', '_blank');"
                                style="cursor: pointer; margin: 20px 0px; text-decoration: underline; color: #5799EF;">
                                See the full gallery</p>
                        </div>

                    </div>
                </div>

            </div>


            <!-- STORY LINE done -->
            <div class="storyLine">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>StoryLine></h2>
                    <span class="arrow"></span>
                </div>
                <div id="story-content" class="truncate">
                    <p style="color: #B3B3B3; font-weight: bold;">Tom Hardy: A Master of Transformation</p>

                    In a world of cookie-cutter Hollywood heartthrobs, Tom Hardy stands apart. He's a shapeshifter,
                    disappearing into roles with an intensity that's both captivating and unnerving. From the masked
                    brute Bane in "The Dark Knight Rises" to the enigmatic anti-hero in "Mad Max: Fury Road," Hardy has
                    forged a career on defying expectations.<br><br>

                    This review storyline delves into the depths of Hardy's filmography, exploring his ability to embody
                    characters who are often flawed, complex, and even dangerous. We'll examine his nuanced
                    performances, his dedication to physical transformation, and his fearless approach to taking on
                    challenging roles.<br><br>
                    This review storyline will take us on a journey through Tom Hardy's most iconic roles, from his
                    breakout performance in "Bronson" to his acclaimed work in "The Revenant." We'll explore his
                    versatility, his depth, and his unwavering commitment to his craft. Along the way, we'll uncover the
                    secrets behind his ability to captivate audiences and leave a lasting impression.
                </div>
                <button id="read-more-btn">Read More</button>
            </div>

            <!-- photo done -->
            <div class="photo">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Photo </h2>
                    <span class="arrow"></span>
                </div>
                <div class="slider-container">
                    <button class="slider-button left" onclick="slide(-1)">&#9664;</button>
                    <div class="morelikethis-big" id="slider">
                        <!-- Card template -->
                    </div>
                    <button class="slider-button right" onclick="slide(1)">&#9654;</button>
                </div>

            </div>


            <!-- video not done -->
            <div class="video">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Video</h2>
                    <span class="arrow"></span>
                </div>

                <div class="slider-container">
                    <button class="slider-button left" onclick="slide(-1)">&#9664;</button>
                    <div class="video-big" id="video-slider">
                        <!-- Video template -->
                    </div>
                    <button class="slider-button right" onclick="slide(1)">&#9654;</button>
                </div>


            </div>


            <!-- knownfor done -->
            <div class="knowfor-editorlist">
                <div class="relatednews">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2>Know for ></h2>
                        <span class="arrow"></span>
                    </div>
                    <div class="knowfor">
                        <div class="knowfor-infomation">
                            <div class="knowfor-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="knowfor-nd">
                                <p style="font-weight: bold;">Venom</p>
                                <span style="color: gold; font-size: small;"><i class="fas fa-star"></i> 8.4</span>

                                <p style="font-size: small; color: grey;">Jun 12 2012 </p>
                            </div>
                        </div>
                        <div class="knowfor-infomation">
                            <div class="knowfor-img">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXWnBnPN47nWvqWJAxw-vmchKc_2u1zkG6Bw&s"
                                    alt="">
                            </div>
                            <div class="knowfor-nd">
                                <p style="font-weight: bold;">Inception</p>
                                <span style="color: gold; font-size: small;"><i class="fas fa-star"></i> 8.4</span>

                                <p style="font-size: small; color: grey;">Jun 12 2012 </p>
                            </div>
                        </div>
                    </div>
                    <div class="related-info">
                        <div class="knowfor-infomation">
                            <div class="knowfor-img">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3ekE6Hhz9gvIbiFSUPxt-FyAh4zXTXX0bjQ&s"
                                    alt="">
                            </div>
                            <div class="knowfor-nd">
                                <p style="font-weight: bold;">The dark knight</p>
                                <span style="color: gold; font-size: small;"><i class="fas fa-star"></i> 8.4</span>

                                <p style="font-size: small; color: grey;">Jun 12 2012 </p>
                            </div>
                        </div>
                        <div class="knowfor-infomation">
                            <div class="knowfor-img">
                                <img src="https://m.media-amazon.com/images/M/MV5BOTQwZmQyYzEtODk5ZC00OTY3LWExMjAtYzRjNWFhNGM3MzBlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg"
                                    alt="">
                            </div>
                            <div class="knowfor-nd">
                                <p style="font-weight: bold;">Inception</p>
                                <span style="color: gold; font-size: small;"><i class="fas fa-star"></i> 8.4</span>

                                <p style="font-size: small; color: grey;">Jun 12 2012 </p>
                            </div>
                        </div>
                    </div>
                    <div class="related-info">
                        <div class="knowfor-infomation">
                            <div class="knowfor-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="knowfor-nd">
                                <p style="font-weight: bold;">Inception</p>
                                <span style="color: gold; font-size: small;"><i class="fas fa-star"></i> 8.4</span>

                                <p style="font-size: small; color: grey;">Jun 12 2012 </p>
                            </div>
                        </div>
                        <div class="knowfor-infomation">
                            <div class="knowfor-img">
                                <img src="https://m.media-amazon.com/images/M/MV5BMTQ1MjE5MzU2M15BMl5BanBnXkFtZTgwNzE4OTMzMTE@._V1_.jpg"
                                    alt="">
                            </div>
                            <div class="knowfor-nd">
                                <p style="font-weight: bold;">Locke</p>
                                <span style="color: gold; font-size: small;"><i class="fas fa-star"></i> 8.4</span>

                                <p style="font-size: small; color: grey;">Jun 12 2012 </p>
                            </div>
                        </div>
                    </div>
                    <div class="related-info">
                        <a href="https://editorial.rottentomatoes.com/guide/all-tom-hardy-movies-ranked/"
                            target="_blank">Watch more</a>
                    </div>
                </div>

                <!-- <div class="editorial-list"> -->
                <div class="editorial">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2>Editorial-list ></h2>
                        <span class="arrow"></span>
                    </div>
                    <p style="color: grey; font-size: small;">Related lists created by Gr2 editors</p>

                    <div class="editorial-info">
                        <div class="editorial-details">
                            <p style="font-weight: 600px;">Music</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="editorial-img">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Singin%27_in_the_Rain_%281952_poster%29.jpg"
                                alt="">
                        </div>

                    </div>
                    <div class="editorial-info">
                        <div class="editorial-details">
                            <p style="font-weight: 600px;">Music</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="editorial-img">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Singin%27_in_the_Rain_%281952_poster%29.jpg"
                                alt="">
                        </div>

                    </div>
                    <div class="editorial-info">
                        <div class="editorial-details">
                            <p style="font-weight: 600px;">Music</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="editorial-img">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Singin%27_in_the_Rain_%281952_poster%29.jpg"
                                alt="">
                        </div>

                    </div>
                    <div class="editorial-info">
                        <div class="editorial-details">
                            <p style="font-weight: 600px;">Music</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="editorial-img">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Singin%27_in_the_Rain_%281952_poster%29.jpg"
                                alt="">
                        </div>

                    </div>
                </div>
                <!-- </div> -->
            </div>


            <!-- did you know done -->
            <div class="didyouknow">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Did You Know?</h2>
                    <span class="arrow"></span>
                </div>
                <div class="didyouknow-content">
                    <div class="didyouknows">
                        <h6 style="color: black;">Trivia</h6>
                        <p>
                            Director Carlos Saldanha, who lives in Rio, first came up with the concept in
                            1995.
                            Originally, it was about a penguin washing up on the beach in the Brazilian
                            city. When he
                            learned about the production of Happy Feet (2006) and Surf's Up (2007), he
                            changed his
                            screenplay radically.
                        </p>
                    </div>
                    <div class="didyouknows">
                        <h6>Goofs</h6>
                        <p>
                            Linda serves Blu a cup of hot chocolate at the beginning of the film. Chocolate
                            is toxic to
                            Macaws.

                        </p>
                    </div>
                    <div class="didyouknows">
                        <h6>Crazy credits</h6>
                        <p>
                            At the end of the credits, two blue feathers are formed by the abstract shapes.
                        </p>
                    </div>
                    <div class="didyouknows">
                        <h6>Trivia</h6>
                        <p>
                            Director Carlos Saldanha, who lives in Rio, first came up with the concept in
                            1995.
                            Originally, it was about a penguin washing up on the beach in the Brazilian
                            city. When he
                            learned about the production of Happy Feet (2006) and Surf's Up (2007), he
                            changed his
                            screenplay radically.
                        </p>
                    </div>
                </div>
            </div>

            <!-- tail wind1 done -->
            <div class="isolate bg-white px-6 py-24 sm:py-32 lg:px-8" style="padding-top: 15px; padding-bottom: 15px;">
                <div class="absolute inset-x-0 top-[-10rem] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[-20rem]"
                    aria-hidden="true">
                    <div class="relative left-1/2 -z-10 aspect-[1155/678] w-[36.125rem] max-w-none -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%-40rem)] sm:w-[72.1875rem]"
                        style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)">
                    </div>
                </div>
                <div class="mx-auto max-w-2xl text-center">
                    <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Contact sales</h2>
                    <p class="mt-2 text-lg leading-8 text-gray-600">Want to PR your product, contact us for more ideas.</p>
                </div>
                <form action="#" method="POST" class="mx-auto mt-16 max-w-xl sm:mt-20">
                    <div class="grid grid-cols-1 gap-x-8 gap-y-6 sm:grid-cols-2">
                        <div>
                            <label for="first-name" class="block text-sm font-semibold leading-6 text-gray-900">First name</label>
                            <div class="mt-2.5">
                                <input type="text" name="first-name" id="first-name" autocomplete="given-name"
                                    class="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                            </div>
                        </div>
                        <div>
                            <label for="last-name" class="block text-sm font-semibold leading-6 text-gray-900">Last name</label>
                            <div class="mt-2.5">
                                <input type="text" name="last-name" id="last-name" autocomplete="family-name"
                                    class="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                            </div>
                        </div>
                        <div class="sm:col-span-2">
                            <label for="email" class="block text-sm font-semibold leading-6 text-gray-900">Email</label>
                            <div class="mt-2.5">
                                <input type="email" name="email" id="email" autocomplete="email"
                                    class="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                            </div>
                        </div>
                        <div class="sm:col-span-2">
                            <label for="phone-number" class="block text-sm font-semibold leading-6 text-gray-900">Phone number</label>
                            <div class="relative mt-2.5">
                                <div class="absolute inset-y-0 left-0 flex items-center">
                                    <label for="country" class="sr-only">Country</label>
                                    <select id="country" name="country"
                                        class="h-full rounded-md border-0 bg-transparent bg-none py-0 pl-4 pr-9 text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                                        <option>US</option>
                                        <option>VN</option>
                                        <option>EU</option>
                                    </select>
                                    <svg class="pointer-events-none absolute right-3 top-0 h-full w-5 text-gray-400"
                                        viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                        <path fill-rule="evenodd"
                                            d="M5.23 7.21a.75.75 0 011.06.02L10 11.168l3.71-3.938a.75.75 0 111.08 1.04l-4.25 4.5a.75.75 0 01-1.08 0l-4.25-4.5a.75.75 0 01.02-1.06z"
                                            clip-rule="evenodd" />
                                    </svg>
                                </div>
                                <input type="tel" name="phone-number" id="phone-number" autocomplete="tel"
                                    class="block w-full rounded-md border-0 px-3.5 py-2 pl-20 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                            </div>
                        </div>
                        <div class="flex gap-x-4 sm:col-span-2">
                            <div class="flex h-6 items-center">
                                <button type="button"
                                    class="flex w-8 flex-none cursor-pointer rounded-full bg-gray-200 p-px ring-1 ring-inset ring-gray-900/5 transition-colors duration-200 ease-in-out focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                                    role="switch" aria-checked="false" aria-labelledby="switch-1-label">
                                    <span class="sr-only">Agree to policies</span>
                                    <span aria-hidden="true"
                                        class="h-4 w-4 translate-x-0 transform rounded-full bg-white shadow-sm ring-1 ring-gray-900/5 transition duration-200 ease-in-out"></span>
                                </button>
                            </div>
                            <label class="text-sm leading-6 text-gray-600" id="switch-1-label">
                                By selecting this, you agree to our
                                <a href="#" class="font-semibold text-indigo-600">privacy&nbsp;policy</a>.
                            </label>
                        </div>
                    </div>
                    <div class="mt-10">
                        <button type="submit"
                            class="submit-button block w-full rounded-md px-3.5 py-2.5 text-center text-sm shadow-sm">Join our site</button>
                    </div>
                </form>
            </div>
              
              

            <!-- user review done -->
            <div class="user-review">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>User Review></h2>
                    <span class="arrow"></span>
                </div>
                <div class="review-container">
                    <div class="featured-title">
                        <div class="featured-review">FEATURED REVIEW</div>
                        <!-- tạm thời css dịch chuyển không được  -->
                        <!-- <div class="review-rating">8/10</div> -->
                    </div>
                    <div class="review-title">Predictable but well done</div>
                    <div class="review-content">
                        We saw this in 2D, on a digital projection system. While the movie is an hour and 36
                        minutes, it
                        felt longer to me. I guess it's because there was nothing new about this, it was all
                        pretty
                        predictable. I even dozed off for a few minutes part way through.
                        <br><br>
                        Now, on the positive side, the movie's colors are rich and vibrant. The animation
                        quality is
                        simply amazing; some of the wide scenic shots looked almost real. The music is a lot
                        of fun and
                        there are some good laughs, especially in the latter half of the film. My 10-year
                        old son was
                        glued to the screen; even asked us when it was over which was our favorite scene(s).
                        Overall,
                        it's a good film. I'd say take the kids and go have some fun.
                    </div>
                    <div class="reactions">
                        <span class="reaction">
                            <i class="fas fa-thumbs-up"></i> 258
                        </span>
                        <span class="reaction">
                            <i class="fas fa-heart"></i> 196
                        </span>
                        <span class="reaction">
                            <i class="fas fa-thumbs-down"></i> 0
                        </span>
                    </div>

                </div>
            </div>



            <!-- fap done -->
            <div class="fap-userlist done ">
                <div class="faq">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2> FAQ></h2>
                        <span class="arrow"></span>
                    </div>
                    <div class="faq-content">
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Câu hỏi về phim
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <strong>This is the first item's accordion body.</strong> It is
                                        shown by default, until the collapse plugin adds the appropriate classes that we
                                        use
                                        to style each element. These classes control the overall appearance, as well as
                                        the
                                        showing and hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding our default variables. It's also worth noting that just about any
                                        HTML can go within the <code>.accordion-body</code>, though the transition does
                                        limit
                                        overflow.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Câu hỏi
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <strong>This is the second item's accordion body.</strong> It is
                                        hidden by default, until the collapse plugin adds the appropriate classes that
                                        we use
                                        to style each element. These classes control the overall appearance, as well as
                                        the
                                        showing and hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding our default variables. It's also worth noting that just about any
                                        HTML can go within the <code>.accordion-body</code>, though the transition does
                                        limit
                                        overflow.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        Accordion Item #3
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <strong>This is the third item's accordion body.</strong> It is
                                        hidden by default, until the collapse plugin adds the appropriate classes that
                                        we use
                                        to style each element. These classes control the overall appearance, as well as
                                        the
                                        showing and hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding our default variables. It's also worth noting that just about any
                                        HTML can go within the <code>.accordion-body</code>, though the transition does
                                        limit
                                        overflow.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="userlist">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2>Gerne on Top></h2>
                        <span class="arrow"></span>
                    </div>
                    <div class="userlist-info">
                        <div class="userlist-img">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Singin%27_in_the_Rain_%281952_poster%29.jpg"
                                alt="">
                        </div>
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">Music</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                    </div>
                    <div class="userlist-info">
                        <div class="userlist-img">
                            <img src="https://play-lh.googleusercontent.com/x5ngG1WmMpd2MyqJ7-SRKpzivvmtNZOpPcTQnbddBVjJBxxsGQKzGRvQiukWDWV1FMUFfmCwNghXw7HIevQ"
                                alt="">
                        </div>
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">Hornor is Real</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                    </div>
                    <div class="userlist-info">
                        <div class="userlist-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BNmY1YTg5NmMtN2ZmYi00MmRhLWFjNmItZDQ5MTc0NjFhYjMxXkEyXkFqcGdeQXVyMzA2MTgyODI@._V1_FMjpg_UX1000_.jpg"
                                alt="">
                        </div>
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">Melody</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                    </div>
                    <div class="userlist-info">
                        <div class="userlist-img">
                            <img src="https://filmfare.wwmindia.com/content/2021/aug/best-comedy-movies-hollywood-were-the-millers.jpg"
                                alt="">
                        </div>
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">Comedyy</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                    </div>


                </div>
            </div>

            <!-- detail done -->
            <div class="details">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Personal Details ></h2>
                    <span class="arrow"></span>
                </div>
                <div class="movie-info">
                    <div class="detail-row">
                        <span class="label">Alternative name:</span> <span class="label-desc">Thomas Hardy
                            ></span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Height:</span>
                        <span class="label-desc">5′ 9″ (1.75 m)</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Born:</span>
                        <span class="label-desc"><a href="#" class="link">September 15, 1977Hammersmith, London,
                                England, UK</a> ·
                            <a href="#" class="link">Official site</a> </span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Languages:</span> <span class="label-desc">English · Portuguese
                            ·
                            Arabic
                            ·
                            Spanish · Brazilian Sign Language</span>

                    </div>
                    <div class="detail-row">
                        <span class="label">Also known as:</span> <span class="label-desc">Rio the
                            Movie</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Filming locations:</span><span class="label-desc"> Brazil (Part
                            of
                            the
                            action of film) </span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Production companies:</span><span class="label-desc"> Twentieth
                            Century
                            Fox
                            Animation · Blue Sky Studios</span>

                    </div>
                    <div class="detail-row">
                        <a href="#" class="link">See more company credits at GR2</a>
                    </div>
                </div>

            </div>


            <!-- relatednews done  -->
            <div class="relatednews">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Related news></h2>
                    <span class="arrow"></span>
                </div>
                <div class="related-info">
                    <div class="related-infomation">
                        <div class="related-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BZGUyMDIzYmItOGYwZi00NTFkLWI4YzMtMDc3MDIzNmJkYjM0XkEyXkFqcGc@._V1_QL75_UY266_CR43,0,180,266_.jpg"
                                alt="">
                        </div>
                        <div class="related-nd">
                            <p>Duran Duran’s Rio Cover Model Identified 42 Years Later
                            </p>
                            <p style="font-size: small; color: grey;">Jun 12 Consequence -Music</p>

                        </div>
                    </div>
                    <div class="related-infomation">
                        <div class="related-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BYzUyOTk0OGMtYWEyZi00NGYyLTk1NTctMDMyNWFmNTJhNTY3XkEyXkFqcGc@._V1_QL75_UY266_CR110,0,180,266_.jpg"
                                alt="">
                        </div>
                        <div class="related-nd">
                            <p>Duran Duran’s Rio Cover Model Identified 42 Years Later
                            </p>
                            <p style="font-size: small; color: grey;">Jun 12 Consequence -Music</p>

                        </div>
                    </div>
                </div>

            </div>



            <!-- Contribute done  -->
            <div class="contribute">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Contribute to our page></h2>
                    <span class="arrow"></span>
                </div>
                <form class="form-css">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Email address</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1"
                            placeholder="name@example.com">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Scroll down for your imagination</label>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Content of the film</option>
                            <option>Actor, Feature</option>
                            <option>Prize</option>
                            <option>Another</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Place your ideas</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Be open yourself"></textarea>
                    </div>
                </form>
                <div class="contribute-submit">
                    <button type="submit">
                        <i class="fa-solid fa-pen-to-square"></i> Submit your ideas
                    </button>
                </div>



            </div>

        </div>

    </div>


    
    <!-- footer done -->
    <div class="footer">
        <div class="box-1">
            Sign in for more access
        </div>
        <div class="box-2">
            <div class="box-2-left">
                <div class="box2l-details">Follow Us on social</div>
                <div class="box2l-icon">
                    <i class="fab fa-tiktok"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-youtube"></i>
                    <i class="fab fa-facebook"></i>
                </div>
            </div>
            <div class="box-2-right">
                <div class="box2r-content">
                    <div>
                        <div style="color:#FFFFFF; font-size: 18px; font-weight: bold; margin-bottom: 6px;">
                            Get
                            the
                            Gr2 app</div>
                        <div style="color: #B3B3B3; font-size: 14px;">For Android and iOS</div>
                    </div>
                    <div class="box2r-icon">
                        <img src="https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_500,h_500/https://quetmavach.com/wp-content/uploads/2018/07/quet-ma-qr-2.jpeg"
                            alt="QR Code">
                    </div>
                </div>
            </div>
        </div>
        <div class="box-3">
            <nav class="footer-nav">
                <a href="#">Help</a>
                <a href="#">Site Index</a>
                <a href="#">Gr2 Pro</a>
                <a href="#">Box Office Mojo</a>
                <a href="#">License IMDb Data</a>
            </nav>
        </div>

        <div class="box-4">
            <nav class="footer-nav">
                <a href="#">Press Room</a>
                <a href="#">Advertising</a>
                <a href="#">Jobs</a>
                <a href="#">Conditions of Use</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Your Ads Privacy Choices</a>
            </nav>
        </div>

        <div class="box-5">

            <div style="color: #B3B3B3; font-size: small; margin-top: 10px;">
                © 2023-2024 by Gr2.com, Inc.
            </div>

        </div>


    </div>
    



</div>



    <script src="myjs/contribute2.js"></script>
    <script src="myjs/morelikethisimg2.js"></script>
    <script src="myjs/morelikethisvideo2.js"></script>
    <script src="myjs/storyline2.js"></script>
    <script src="myjs/userreview2.js"></script>
</body>

</html>