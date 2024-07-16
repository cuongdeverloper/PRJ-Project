<%-- 
    Document   : TopActor
    Created on : Jul 14, 2024, 4:28:05 PM
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
    <link rel="stylesheet" href="topactor.css">
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
                                                            <span class="label-desc" style="color: #5799EF;">Horror · Comedy · Drama · Action · Sci-Fi</span>tem-action">Festival
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
                    <p>Top Actor</p>
                    <p>Actor · Producer · Writer</p>
                </div>
                <div class="head-site-first-rating">
                    <div class="links">
                        <a href="#">Oscar ·</a>
                        <a href="#">TVB ·</a>
                        <a href="#">Trivia ·</a>
                        <a href="#">BBC ·</a>
                        <a href="#">Gr2Pro ·</a>
                        <a href="#">All prize</a>
                    </div>
                    <div class="ratings">
                        <div class="imdb-rating">
                            <span class="star">&#9733;</span>
                            <span class="rating" style="color: white; font-weight: bold;">8.9</span><span
                                style="color: grey; font-size: ">/10</span>

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

                <div class="img1" style="width: 45%;">
                    <img src="https://i.abcnewsfe.com/a/961b8366-1dc3-413d-8d37-34bc903b64a7/OscarsBest_Actor_v01_LY_1708456148406_hpMain_16x9.jpg  " alt="">
                </div>
                <div class="img2"
                    style="width: 55%; overflow: hidden; border-radius: 20px; display: flex; justify-content: center; align-items: center;">
                    <iframe width="100%" height="400" src="https://www.youtube.com/embed/Ila2XMCBF3Q?autoplay=1&mute=1"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen style="border-radius: 20px;"></iframe> </div>
                
            </div>
            <div class="head-site-third">
                <!-- <div class="some">
                    <div class="hint" style="color: white;">
                        Oscar
                    </div>
                    <div class="hint" style="color: white;">
                        Golden Actor
                    </div>
                    <div class="hint" style="color: white;">
                        The Best
                    </div>
                </div> -->
                <div class="movie-info">
                    <p  style="color: white;">
                        The Academy Award for Best Actor is a prestigious honor in the film industry. <span>It recognizes the outstanding
                        performance</span> of an actor in a leading role each year. Since its inception in <span>1929</span>, this award has
                        highlighted the talents of some of the most remarkable actors in cinema history. <span>Daniel Day-Lewis</span>, a
                        three-time winner, exemplifies the pinnacle of acting excellence, with his incredible ability to transform into
                        diverse characters. The Best Actor award celebrates not just the performance, but also the dedication and hard work
                        that these actors bring to their roles.
                    </p>
                    

                    <div class="detail-row">
                        <span class="label" style="color: white; font-weight: bold;">Kind of:</span>
                        <span class="label-desc" style="color: #5799EF;">Horror · Comedy · Drama · Action · Sci-Fi</span>
                    </div>
                    <div class="detail-row">
                        <span class="label" style="color: white; font-weight: bold;">Oscar Wins:</span>
                        <span class="label-desc" style="color: #5799EF;">Leonardo DiCaprio · Daniel Day-Lewis · Natalie Portman · Tom Hanks</span>
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
            <div class="top">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Top 20 From Time to Time</h2>
                    <span class="arrow"></span>
                </div>
                <div class="topactor">
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="details">
                            <img src="https://hips.hearstapps.com/hmg-prod/images/9th-annual-ves-awards---red-carpet.jpg" alt="Profile Picture">
                            <div>
                                <p class="rating">1 (▲ 23)</p>
                                <h2>Joey King</h2>
                                <p>Actress · Producer · Soundtrack</p>
                                <a href="#">The Act (2019– )</a>
                            </div>
                            <div class="plus-icon">+</div>
                        </div>
                        
                    </div>
                    
                </div>
            </div>
            

             <!-- detail  -->

             <div class="details">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Details</h2>
                    <span class="arrow"></span>
                </div>
                <div class="actor-info">
                    <div class="detail-row">
                        <span class="label">Name:</span> 
                        <span class="label-desc">Leonardo DiCaprio</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Oscar Won:</span>
                        <span class="label-desc">Best Actor</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Winning Film:</span>
                        <span class="label-desc">The Revenant (2015)</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Other Nominations:</span>
                        <span class="label-desc">What's Eating Gilbert Grape (1993) · The Aviator (2004) · Blood Diamond (2006) · The Wolf of Wall Street (2013)</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Countries of origin:</span>
                        <span class="label-desc">United States</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Official sites:</span>
                        <span class="label-desc"><a href="#" class="link">Official Facebook</a> · <a href="#" class="link">Official Instagram</a></span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Languages Spoken:</span> 
                        <span class="label-desc">English</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Also known as:</span> 
                        <span class="label-desc">Leo</span>
                    </div>
                    <div class="detail-row">
                        <s  pan class="label">Born in:</s>
                        <span class="label-desc">Los Angeles, California, USA</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Production companies:</span>
                        <span class="label-desc">Appian Way Productions</span>
                    </div>
                    <div class="detail-row">
                        <a href="#" class="link">See more details on IMDb</a>
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



    <script src="myjs/contribute.js"></script>
    <script src="myjs/morelikethisimg.js"></script>
    <script src="myjs/morelikethisvideo.js"></script>
    <script src="myjs/storyline.js"></script>
    <script src="myjs/userreview.js"></script>
</body>

</html>