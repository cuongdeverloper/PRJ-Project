<%-- Document : Header Created on : Jun 6, 2024, 7:44:49 AM Author : ACER --%>

  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Header</title>
    </head>

    <body>
      <div class="HomePage-header">
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-container">
          <div class="container-fluid">
            <a class="navbar-brand title-header while-font" href="#">HOME</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active while-font" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link while-font" href="#">
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalLong">
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
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                                            <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm4 0v6h8V1zm8 8H4v6h8zM1 1v2h2V1zm2 3H1v2h2zM1 7v2h2V7zm2 3H1v2h2zm-2 3v2h2v-2zM15 1h-2v2h2zm-2 3v2h2V4zm2 3h-2v2h2zm-2 3v2h2v-2zm2 3h-2v2h2z"/>
                                            </svg>
                                            <h4>MOVIES</h4>
                                        </span>                                      
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Release Calendar</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top 250 Movies</a>
                                            <a href="#" class="list-group-item list-group-item-action">Most Popular Movies</a>
                                            <a href="#" class="list-group-item list-group-item-action">Browse Movies by Genre</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top Box Office</a>
                                            <a href="#" class="list-group-item list-group-item-action">Showtimes & Tickets</a>
                                            <a href="#" class="list-group-item list-group-item-action">Movies News</a>
                                            <a href="#" class="list-group-item list-group-item-action">Spotlight</a>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tv" viewBox="0 0 16 16">
                                            <path d="M2.5 13.5A.5.5 0 0 1 3 13h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5M13.991 3l.024.001a1.5 1.5 0 0 1 .538.143.76.76 0 0 1 .302.254c.067.1.145.277.145.602v5.991l-.001.024a1.5 1.5 0 0 1-.143.538.76.76 0 0 1-.254.302c-.1.067-.277.145-.602.145H2.009l-.024-.001a1.5 1.5 0 0 1-.538-.143.76.76 0 0 1-.302-.254C1.078 10.502 1 10.325 1 10V4.009l.001-.024a1.5 1.5 0 0 1 .143-.538.76.76 0 0 1 .254-.302C1.498 3.078 1.675 3 2 3zM14 2H2C0 2 0 4 0 4v6c0 2 2 2 2 2h12c2 0 2-2 2-2V4c0-2-2-2-2-2"/>
                                            </svg>
                                            <h4>TV SHOWS</h4>
                                        </span>                                      
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">What's on TV & Streaming</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top 250 TV Shows</a>
                                            <a href="#" class="list-group-item list-group-item-action">Most Popular TV Shows</a>
                                            <a href="#" class="list-group-item list-group-item-action">Browse TV Shows by Genre</a>
                                            <a href="#" class="list-group-item list-group-item-action">Top Box Office</a>
                                            <a href="#" class="list-group-item list-group-item-action">TV News</a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                            <path d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z"/>
                                            <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z"/>
                                            </svg>
                                            <h4>AWARDS</h4>
                                        </span>                                      
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival Central</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-auto p-2 d-flex bd-highlight row" style="width: 100%; height: auto;">
                                    <div class="col-md-6">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                            <path d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z"/>
                                            <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z"/>
                                            </svg>
                                            <h4>AWARDS</h4>
                                        </span>                                      
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival Central</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <span class="title-child-header">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
                                            <path d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702z"/>
                                            <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z"/>
                                            </svg>
                                            <h4>AWARDS</h4>
                                        </span>                                      
                                        <div class="list-group group-title">
                                            <a href="#" class="list-group-item list-group-item-action">Oscars</a>
                                            <a href="#" class="list-group-item list-group-item-action">ABFF</a>
                                            <a href="#" class="list-group-item list-group-item-action">Pride</a>
                                            <a href="#" class="list-group-item list-group-item-action">STARmeter Awards</a>
                                            <a href="#" class="list-group-item list-group-item-action">Awards Central</a>
                                            <a href="#" class="list-group-item list-group-item-action">Festival Central</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="modal-body resMobile">
                          <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item header-accor">
                              <h2 class="accordion-header" id="flush-headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                  data-bs-target="#flush-collapseOne" aria-expanded="false"
                                  aria-controls="flush-collapseOne">
                                  Accordion Item #1
                                </button>
                              </h2>
                              <div id="flush-collapseOne" class="accordion-collapse collapse"
                                aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">Placeholder content for this accordion, which is intended to
                                  demonstrate the <code>.accordion-flush</code> class. This is the first item's
                                  accordion body.</div>
                              </div>
                            </div>
                            <div class="accordion-item">
                              <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                  data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                  aria-controls="flush-collapseTwo">
                                  Accordion Item #2
                                </button>
                              </h2>
                              <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">Placeholder content for this accordion, which is intended to
                                  demonstrate the <code>.accordion-flush</code> class. This is the second item's
                                  accordion body. Let's imagine this being filled with some actual content.</div>
                              </div>
                            </div>
                            <div class="accordion-item">
                              <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                  data-bs-target="#flush-collapseThree" aria-expanded="false"
                                  aria-controls="flush-collapseThree">
                                  Accordion Item #3
                                </button>
                              </h2>
                              <div id="flush-collapseThree" class="accordion-collapse collapse"
                                aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">Placeholder content for this accordion, which is intended to
                                  demonstrate the <code>.accordion-flush</code> class. This is the third item's
                                  accordion body. Nothing more exciting happening here in terms of content, but just
                                  filling up the space to make it look, at least at first glance, a bit more
                                  representative of how this would look in a real-world application.</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
           </div>
                  
      </div>
    </body>

    </html>