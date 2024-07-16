<%@page import="Database.ConnectionDB"%>
<%@page import="Model.Movie" %>
<%@page import="java.util.List" %>
<%@page import="Model.Trailer" %>
<%@page import="Model.Director" %>
<%@page import="Model.Language" %>
<%@page import="Model.Actor" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 
    List<Trailer> listdetailmovie = (List<Trailer>) session.getAttribute("listdetailmovie");
     List<Trailer> list6 = (List<Trailer>) session.getAttribute("list6");
    List<Director> listdirect = (List<Director>) session.getAttribute("listdirect");
    List<Actor> listac = (List<Actor>) session.getAttribute("listac");
    List<String> lang = (List<String>) session.getAttribute("lang");
    List<String> genre = (List<String>) session.getAttribute("genre");
    List<String> imgPhoto = (List<String>) session.getAttribute("imgPhoto");

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="hThanhĐTttps://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        rel="stylesheet">
    <link rel="stylesheet" href="reviewpage.css">
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
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>


</head>

<body>
    <!-- homepage done  -->
    <jsp:include page="./HomePage/Header.jsp" />  


    <div class="whole-site">

        <!-- headsite done 80% -->
        <div class="head-site">
            <div class="head-site-first">
                <div class="head-site-first-title">
                    <p><%=listdetailmovie.get(0).getMovieID().getTitle()%></p>
                    <p>
                        <%=listdetailmovie.get(0).getMovieID().getRealaseTime()%> - 
                        <%=listdetailmovie.get(0).getMovieID().getCertificate()%> -
                        <%=listdetailmovie.get(0).getMovieID().getMovieLength()%>
                       </p>
                </div>
                <div class="head-site-first-rating">
                    <div class="links">
                        <a href="#">Cast & crew ·</a>
                        <a href="#">User reviews ·</a>
                        <a href="#">Trivia ·</a>
                        <a href="#">FAQ ·</a>
                        <a href="#">IMDbPro ·</a>
                        <a href="#">All topics</a>
                    </div>
                    <div class="ratings">
                        <div class="imdb-rating">
                            <span class="star">&#9733;</span>
                            <span class="rating" style="color: white; font-weight: bold;">
                                <%=listdetailmovie.get(0).getMovieID().getRating()%>
                                
                            </span><span
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

                <div class="img1" style="width: 25%;">
                    <img src="
                         <%=listdetailmovie.get(0).getImgUrl()%>
                         "
                        alt="">
                </div>
                <!-- <div class="img2" style="width: 50;">
                    <img src="https://i.ytimg.com/vi/3BSQ7xnOqnA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA0iUYaGVI9LxErTrBWUfrK95-HBA"
                    alt=""></div> -->
                <div class="img2"
                    style="width: 55%; overflow: hidden; border-radius: 20px; display: flex; justify-content: center; align-items: center;">
                    <iframe width="100%" height="400" src="
                            https://www.youtube.com/embed/<%=listdetailmovie.get(0).getVideoUrl()%>
                            "
     
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
                        <%=genre.get(0)%>
                    </div>
                    
                    <div class="hint" style="color: white;">
                        Adventure
                    </div>
                    <div class="hint" style="color: white;">
                        Comedy
                    </div>
                    
                    
                    
                </div>
                <div class="movie-info">
                    <p style="color: white;">When Blu, a domesticated macaw from small-town Minnesota, meets the
                        fiercely independent Jewel, he takes off on an adventure to Rio de Janeiro with the bird of his
                        dreams.</p>
                    <div class="detail-row">
                        <span class="label" style="color: white; font-weight: bold;">Director:</span>
                        <span class="label-desc" style="color: #5799EF;">
                            <%=listdirect.get(0).getName()%>
                            
                        </span>
                    </div>
                    <div class="detail-row">
                        <span class="label" style="color: white; font-weight: bold;">Writers:</span>
                        <span class="label-desc" style="color: #5799EF;"><%=listdirect.get(0).getName()%></span>
                    </div>
                    <div class="detail-row">
                        <span class="label" style="color: white; font-weight: bold;">Languages:</span>
                        <span class="label-desc" style="color: #5799EF;">
                            <%=lang.get(0)%>
                        </span>
                    </div>
                </div>
            </div>
        </div> <!-- Closing div for head-site -->
<!-- tailwind 2  -->
<div class="relative isolate overflow-hidden py-10 sm:py-10 lg:py-10" style="background-color: #172632;"> 

    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 lg:max-w-none lg:grid-cols-2">
        <div class="max-w-xl lg:max-w-lg">
          <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl">Subscribe to our newsletter.</h2>
          <p class="mt-4 text-lg leading-8 text-gray-300">Share to your Email</p>
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
        <!-- middle-site  -->
        <div class="middle-site">

            <!-- photo done -->
            <div class="photo">
        <div class="header-news">
            <span class="bar"></span>
            <h2>Photo</h2>
            <span class="arrow"></span>
        </div>
        <div class="slider-container">
            <button class="slider-button left" onclick="slide(-1)">&#9664;</button>
            <div class="morelikethis-big" id="slider">
                
                                      <% 
                                        for(String f: imgPhoto){                                                                             
                                      %>
                <div class="morelikethis-small">
                        <div class="morelikethis-img ">
                            <img src= <%out.println(f);%>>
                        </div>
                    </div>
                        <% } %>
            </div>
            <button class="slider-button right" onclick="slide(1)">&#9654;</button>
        </div>
    </div>
   
            <!-- cast done -->
            <div class="cast-userlist">
                <div class="cast">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2>Cast></h2>
                        <span class="arrow"></span>
                    </div>
                    <div class="act-double">
                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                    </div>
                    <div class="act-double">
                            
                                      <% 
                                        for(Actor a: listac){
                                                                               
                                      %>
                        <div class="act-info">
                            <div class="act-img">
                                <img src=
                                     <% 
                                            out.println(a.getActorImg());
                                        %>
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">
                                    <% 
                                            out.println(a.getActorName());
                                        %>
                                    
                                </p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                                         <% }%>
<!--                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>-->
                    </div>
<!--                    <div class="act-double">
                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFRUXFRYVFRgVFRUVFRcYFxYWFhUVFRcYHSggGBonGxYVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAPoAyQMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAABAgMEBQYHAAj/xABHEAACAAQEAwYDAwoDBQkAAAABAgADBBEFEiExBkFRBxMiYXGRMoGxocHRFCNCUmJjcoKS8KKy4RUkQ1NzJTM0RFSjwsPx/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAIBAwQFBv/EACQRAAICAgEEAgMBAAAAAAAAAAABAhEDMSEEEiJBUWEFE3Gx/9oADAMBAAIRAxEAPwCkxcOy9f8AfR5S2+6KhF17KZd6tj0ln7SIsFNcjNu1xvFIHk/3RpUZh2uP+dkj9hj9oiQLX2eLahleeY/aYsb7H0iB4EW1DJ/hv9sTs4+E+h+kAHn/ABJ7zpp/eP8A5jDcOYGqa7uf2m+phOIAXWocbO39Rgl4LAwAbtwmlqOQP3a/SH9e1pbn9k/SK/V8R0+HUMqZPa35tciAjvJhsNEUnXzOw5xk3EHaxW1OZJISRKNwAq3mkftMSR7CBuiSx9m2Id3V5CdJqkfMaj7410mPKcqZOGomODqdDY6cx0hOnd1YTJTujg3Vg5VgdNiOeg9oXuCj1NR0oRpjD9Ng3zsB90O481UHHWKSDcVcxrcppE1T657n2IMXPBO2kiy1lLpbWZIP290/L0b5RNoKIzil71c8/vD9mkRcHqsRl1E2ZNltmVnYjkdSSLg6jSE4kgEQMBHQAdAGBgIAAMFMGMAYgAhgIMRAQASY4Wrb2/Jpl/QfW8aV2fcMPSIzzbCY9tBrlUbC/WLhHRIHRjnaXWiZWFRsihfnufqI0vifHpdJKLsRmIsi8yYwuqqGmOzsbsxLH1MSBuXBi2opH/TESlYbS3P7J+kMeF1tSSB+7X6RJugIIOx0MAHnOYbk+pgojcZnBlC3/l1HpcfSGszs/oT/AMNh6O34xAGNRD1+NgErKsTzY6j5dYnu1I0tPO/I6QsWX/xDFiQCRpKXztq3yHWKGIVslIcVtZMnP3k12mPYDMxubDYDoB0GghaiTzENZdok6Iagfcb+m8KMSi0dpDzNNSJa+XNj7Ae8MZEj1v5WEWHFZeSmlLf4sznrfYH7IrwnWP15QsRpKjnT0hjNlDloYkZjcz9kR1RNB/v7oYUJKnNLbMu/PofIiLNQ1izVzD0I5g9IqTPC1DVGW4YbbMOo/GJTIaLhHQSW4YAjYi4g14YUGAgLx0AA3gIAx0AHGAjo68SBo47U0/8ATt/UIj8Q7TpzC0qUqeZOY+0UAGBgsB3iGITZ7l5rl28+XoOUNYCOgA3HAOIKTuJS9/LBCKCCwBBtExLxOS201D/MI87QIMSB6PWeh2ZT8xEVxfjy0VHOqdCUTwDe8xiFlj0zEX8rxhSVDjZmHoSIjeJa+Y0tUaY5UtmILEjwjTQnqYh6BFdnzGYlmYszEszHUkk3JJ6kkmCgQ4oqR5rhEF2J0/ExqHDfA8hVDTlEx/P4R6D74olNRLoY3LRlcpTyifwSlYsCVJF412XwlSf8hB6C0O5HDMhfhW3zJ+u0VPMXrBXso/E8kZJaqB8A0+3X3iozKFlNyp9ucbi+EIwysoYeYhjP4VkEWyf35REclEyw2YVVvYk/6Qwd7xqHEvAI1aUbeW49ozevoHlHK6kH6xdGaZnljcRoDHR0CYYWiw8P1N1KHlqPQ/6xLXipYXOyuD8j8/8AW0WmVMuIeIjQeOvAR0MQdHQEdABxjoAwEAEjj2ATKZtfEh2Yff0iIjaqunWYpRwCDoQYy7ibA2ppmmstvhPTyMc7pOs/Z4y3/pr6jp+zyjoh4Mi3IHUge8J3hehF5iDq6/5hHRMhfh2XzCoIqF1AOqH8YbzOzCpG02WfcRq8keEeg+kHgAxuZ2c1o27s+jH8Io3HGDzqV5cucuUkMw1BuAQCdI9OxgXbnUZ8RROSU8tfmzzGP2FYWWiUF4FwkKgmEeJh7DkI0egFhFd4ak/mU9BFmo1sI583bOnjjUSSkGHCQjIXSFbRCGYqAII7QIEEYQzYqQ0nreKhxfw4k+WxAAYC4Nuf3RcnhjiA8MQnRLimjzpV0zS3KMLEQhFo42A73a1orDRrTtGGSp0dJOsWWhm7ecVhd4nKRtIeL5Ea4JqOgstri8DFhWDAR0BAB0dAGOvABtJhhjGHrPlNLbmNPI8jD4wUx5NScXaO9SapmL1VO0t2Rt1NjC+ELefKH7xP8wiw9oFBlmLNA0bQ+o2iD4dW9VIH71PrHpuny/txqRxcsOybiehU2HpEDxxikympWmyiAwZQLi41IB0ifEU7tWe1FbrMT63i4rKfJ7SqwbiW38pH3xQOOcXaqq2nlcpZU0BuPCgXT2v84eItyB1IHvA47hCNkmyWJGcSnB5G9gwPQ/eIrnJKkyyEG02i44JxLTS5aS2YggAE2Nr26xY6DGqeZpLmqfK+sUylehlJlmBByJJ1+cR1Y2HN4pNR3b30sT98ZHFM2qTXtGvU1SDC5niMrwPGpsogO4myybBxy9Y0OlYuuYQj4LVySSzx5QWfWIouzAepih8R4xUh+6k+E9efrFZeVmb/AHqvCHoWHz3MSlZEuDU3xenv/wB6nuIa4hUK6+FgR1BBilUNDh7GwqM2w+MH3iU/2Qkkh5MxrH4lLZlYdfIxPahVJlJ42o2+Mbc4pinlGwY/TAyXJHKMlnyLPpt/ehi7G+KM+VVKxCJahbT5CJaj4Bq5qGaQslSLoJt1d+eiWuo8z7GIekUqcpFiLqR0INiPsh1JNlcoNLkmKN9LQ4hjTNrDy8XlAMdeOgLwAdARxgIANqMFMGMFMeRZ30V/janz0rHmpDRSeEVvWSB+8EaFxGL003+AxQ+BVvXSP4r/AOEx2/xcrxtfZzeuXmn9G9xRu1x/90QdZo+hi8xG43gcmrUJOBIBuLEjXblHTMRgNGwExCdg6k+mYXi44lhy+Gw/4mttiB4l09QItzdm1CeTj+cxFYvTiX4f1Z2QX3tlNj7WjPnWmaunfDiZ/iHCLNNznUE3tr/fWFJfBzzGawWWp5eI3tawNx1jSaanDrYw7XCRb4jFCm9Gh4o7Khh3C3dA3y93kswzFjmtuLqLa30JO+ludzwRMskA9BDTESFUIIkKQ2l/KIk7JjGuCHxDCs6TCtg5NgxBIHrbUiKNiPCN5TAL3k0sLuWFra+FVygLqRGn053HWCPhaNqAVPkbf/sTGTREo92zFG4Umm5KZHtoVGVb+QH3RbOEcJqB4Z5aw1B3B9CTF9TBlBuTf5D7oNNAXQRE5uqJx40nwV7E5AKOp6ERUuEeHUWp76b4ghug5ZhzPp9YuGITN4SwjCe8lnkWJG9tDpEdzS4GcFfPolq3D+8tMmEFsylLfoi4NgfrGJ4jrVT7afn5o/8AcYRt8un7qnsx0W1yei6k+wMYSs3vHaZtmcv/AFEt98NiXsTPpIcSzrD8GI87/OHqHSNyOcxW8BBbx14kgG8BAR0QBthgpgxgpjyTPQIhuK5uWlmnqtveKd2dLevk+WY/4TEz2h1lpaygdWNz6CI3swS9enkrH6R3fxkKxX8s5fWyvJXwbdDLEcXkU+Xvpipm2zG17bw9jMO2R/FTjyc/5Y6BjL9T49Svok+WT5OIz7iPE1/2hPkk/D3Dr0KmWFJ+TA/1RnF4Ww9iapWZiSyd3rc7DNv/ACxXl5iW4XUjV6GqFhEvLn3EUfDakrcNyidkVZNr7cvP/SMR1G1QesN5gF+kTEpbJFLxyXNJWbJbVfiU7nW+kLLxYXTKvx3+E2vDIVFmUkN84fZ7GK1gkmqdw85lC72APtc7+wibrH5iIZA8eoFojqpxaGZrx+MJzJ19oV8lipEZW6tEthN8ihSAFF2bp5AczETUaXJhGv4llU+QLJ7xcgZmDZRpvrYg23iabqhHJK2xbtDxsSqbuQbPOVgBzCZT3jt0FvCPNoyKl29vrEjjOJTaipmzZm5VlUa2VNkUX15+5MNadPBcdfvMXpUqMspdzsVmjUw6knSG0yFqY6RpjoyS2LR0AYC8MKDHXgI6IA24wnNcKCToALmFDFD424jBvTyj/GR/lEeXw4ZZZ9qO5kyLHG2VziPE/wAons/6I8K+g5xYeydb1t+ktvqIpMX3sgS9VMPSX9THpscVBKK9HFlJyds2CMn7Y3/PyR0Rj7kRrEY/2vPerQdJX1YwxBRhA4c16hDcWVXc6jkQvK/iO1tDt8yw9w8ZKd5oW7MSq6BrXzKRrfQ2Y2/Z2NtK5jwL7h0tGmC9rTFt87f6GEsWmz6exMvOg5roR+MVrhbFWaVla/gcoG1sSuo1PlF7SoWdLyn9IexEY2qZ0ISUlZCUuMS31ynzsR84eyHpMwmLL8fPUDXz11iHmUKy3ImIPJtQD8xtDunpKYEEZvMZzl8ucPwalji1aLCcXlqNQw9re8Mn4jls2RFeY36qqT8ydgPWE1lIxsiL7BvtiawuiWUL2AJ5ARDoScIxQj+TZvG6BbDkb38jCUmgy3b2HTrEhNe+/WGGM4gES14qYiILFJ63IOYrY5smrWtrlFjr8j6GKsMSD1hlEIFllJPgswKMpzWAOuUGwGp0A9JWhqknMxLAKszKxJIubB7LbXr8lPkRTMBfPVO1wc025NxYgzTbyI9Omm0aILgy5ZW6QtWSQrspuTLJGbw+JcxsTba4W+tzqb9AylLZbfw/jEzxNZZ00fpDIrb7kXFxpqcxJFtOupvEsOXn9DDMRIF9zClOYRY6wpIMXx0Z5bHEATHQEMIdeOvAR0AFu4l4zMy8unuF2L8z6RTSYC8dFOLDDFGoosyZJTdsGNF7Gk/Pzj0RR9pjOovvZVi8ined30xZeYLlzGwNr3i5FZsMQuMcLUtU/eTpeZrWvcjTppC0riOkbaplH+dfxh3LxKS201D6MIkCuL2fUCm/dE+RZiPa8ZbxRh0xJQlUylwsxiwAFxmLarbodNL7XNuW8tUy/wBdfcR584tx3uK2olBJc1BOLy22dSQbWbUEAMeWtzrFWROkWY2vY3o6QUklmmISwllwT4QrkDKha2h28PMgekWjhTHFmKCDox/pYaEGM9xnHGqFyZQqhywtYacgVUBfiLHTqBy1Z4RiTyHBXYkZh9/rFThaLoz7X9HoBJSONYWTCpR3HuFP3RUcF4lRgLn1ifk48n60UGxEzKo0XaEKurVbgbxHT8fTreIWtxxDoDc9BqfnC2TRLza0KuYmIGfmmkzH+EC4H3x1OjzTmf4eQ6+sPKyWShUcxC2NXBBcKEtJnganvXsAxBsyLdWsNBtprcEnlFa7PKCY1TqtklG829tHUMES/Utf25QthGOpRzpqTkYq5lkaAhT8MwsDqQV00vtt0lazjqWZRWSkzvDmJc2RbsCLrYklRZLBgCQLG0aea/pidN/wiOJqoTJsxlcMveKqFSGTKij4LbLfNpc+sR77j++sIzJhORTroWPqx3+phR9T7/bEEgNCkiCTBY2g8iNaMjF4COgDEkHR0dHQAJEW30jo9KzcNkto0pD6qIruNdn9HPByp3T8mTT3Gxgogw2OvExxNw7OopmSYLqfgcbMPuPlCHDtEs6plSm+F3ANunOACOgRG1TOzOhOwcejn74bTOyulO0yaPmD9RABkHeHqfeIPET+cP8AfKNtqeydbfm6hr/tKD9LRjfEVAZFTNksQTLmMpI2NucJMeJGgwWYsLSUvf0hBjCjFoojdFJG4B+yJGUv7Tf1N+MDh9IGlSxsco1+UOJNKwbLbWMktm/HoLLpQTrc+pJ+sT+HYcBYkfL8YLQ0oXzP97ROUVOW8h1istD08i+0PhTgC0OKeTyA0h2suJRDZjXaXgplzFnKPCdG8jfQ+n4xU5ew89Y33HsMSeCjrdWBU+hjFsewOZSTSjXKnVH/AFhfY/tCLoTtUZckKfcvYzaZ4wfQe1oeE/WIzN4vQn6w+dtPaGfoiPsdVK2P2wEiDt4pSt00P2wSTGiDtGaapixgDHRxhxAIC8cY6IINoo+0yhcgMXS/Nl0+ZG0XCnnq6h0YMpFwRqDHmK8bB2O1rPTzJZNwj+HyBF7e94YCy8Y4KtXSvLI8QBZD0YaiMd4El/8AaEgEahzf5AxvxEY1w1TZcaZB+jMmn6n74ANmgrzANyB6mCTqhEF3YLz1IEZ92jlqtZS07XysSxJKcrC194VyS2Mot6NGVgdjePMfaItsRqr/APOJ9wDFwwSmxGncMs6wB1VpjMpHMWsYTxvhRKyqmT5k4rnYHIoAtYAfEb9OnOK5zjWyyEJfBneFyixYj9EXPvaEJOHTZpIloSLkXtZR841/C+FKWnByKbkWYsS1xvY30hf8iVmGVdAflpyil5l6LlgftkBSURXKvSwizSMPutrQKYddieQtEmssgRnk7NUVSGtHg631Y+kTSUoUWhDDhcw+IiBgFW20KhIFEhUJEi2ITZNxFf4l4fSpllGHmOoPUHkYtVoRmJCvZO0ecscwebSzCjjQnwtbQj7jtcQkj3X3EblxFgEupllHW4Ox5g8iDyMYvjuDTaOYZczUEko3Jh+I5iL4y7l9meUO18aFMNmjKynbn6Hn72McqlSQYZ0szQ+kSEtswtzGl+o5RdCVOiicbVnXgLxxgCYvKDo6AjrwAJxrPYvLPdT26uB7KIzun4bq3YKtPMueqkD5kxtfBeC/kNIEcjNq8w8hzPyA+kMiB7xHxDT0UozZ7W3yqNXc9FHzGp0F94zHD8MnT6hq3M9PnYsFQ/nbHkT+iCLbC/pEbXYq2KYit1PdZx3d9hLl3YaftGxPraNMpqYCM+XI1wjRhxp8sjqXDlXUC5O7ElmPqzamHIw+JJZQhQJGVs1pFbxBSg0ENKIq/wAQBicxoDIYrlLo0CBkt+SKdvqYdUVAOe3TYfZCVKYeo0DGQ6MhbADSGdYABYbnYQYk9YIqa3hRheilhFtz5w7luIbKDHGWYkB8CIAvDRVbrBsr9IhsWhfvIIzQiARfQwJmeRhWMHIvEFxFgcuplmXMFwdjzU8mU8jEx346GA7wGJXBD5MDxjBJtHMyTBdTfI/JgPoeohGVM/v7o27G8Jl1Esy5i3U+4PUHkYx7HcGekmd22o1KNb4h+I0vGhOzPKNCYN/7+2CmEpTa+sLNGiDtGWaphY6AjocQ9P2ir9plf3OHTrbzMsofzmzf4M0S/DuI/lNNKnaXdQSBsDzEZ923V7L+Syh8Ld6xHVhkVT8gzf1RL0CKp2dHNVFj+poNhY22HLQRrciMm4TYS6kajVRsdtbW6RqVNMjDlfkbsC8SSUQWY4EJ95pEXiFbyEU7L9DfFanMbchEfJl3MGfWHVPLixcCDuQIdKIRliHCwrHQOWBVIMsHBgAVlrB+7hNGg4aGQrAMtoSKsIdK8HzCIdBbG8uYecJT5sKVDxHZ7mFGHUJskR+K47T0ylpswAi3hHifXbwjUDzNhFPxTjGfPQmmtJS/x2zuQDqAdl2PInX5myGOUtFU8sY7LriFXKkLmmzVQeZ1Poo1O/IRnvFHFtDUo0ru5rWuVmhQqhgNCtzm8the/LeIWszOuTvi3izEsb68yddR4l/u8MHovD4bE2tYAakb/OwPtbpGiOJIyzzuWgjUthdGExd7qCCARcZlOo0B9jBUeFMFqVlzUzLrm1BNrc78ug3hxi9GJb+H4SAR8xf5c9OVoZKmK5XsaGOgoMDaLCs2nsirc9FkvrLdl+R1H1ivdtky8yQBa6K1yeXeMD/9Q94L2LVtpk6Vf4lVx8tD90RHa5XE1LoDpmAO3woi6f1E+0E3wiYrZB8PyxLmjKb+AG/qdL+fpGsUM66g+UZFgUxcyldspHMagk/eI0Skrvza26Rhy7N2F+JN1lZbQRHi5hGTdjeHySoVKixsTSVD2VLjpUq8O1lWgBCaQskJLvCyCIYwcQcCAAgwEABhBgIACDWgAMsCTDarrZclc811Rb2uxAueg6nyEVav4lnzlZqNAstZiy2mTFLTdVzF0px4sgBU5j56c4mMHLQkskY7JrHsXk06Zp0wILEgbs1t8qjVtxsIo03jRJwYqzS0WYihF1nzrnUIQCqDTfodwYpOMF3eYZjF5gYkuWLN4WsVDHdbn4bC2bla0W/gRJC9401pjTpmZGUS1sR8WhI3JF9LWAO1o0RxKOzLPPKWuCx4LwbJannz5kszBNRSbMTNVbBiAMq2OpGhOq7g7Z5U91kmJIJHiyqNTn2u4IUA66BfLnyuPEeK1E2S/dt3Weay2RwXbOqj88hW6DKui6t56C9KqMGc5VUE7XygFtWI56E35dBrFpQM8OojlfM4AKEc9rN87eH6QmML0DAnKSfFYjqDvy+Hz1jT+EsFppslpdSqyTmI1mKSL5LTGLg5WLNlBGhGUamIPG8ESWZVNLdytiwmXyKzA3ZUUnKR4gTr8RPNjEkFNepBYd4AygizEDe9yG8tdfSJdKsVEsK9lKki9tQg+EWv1H2HrBKnDpksqZxGVgXTKpcsLDI+gv4rXBv1vY7t8OmSxMfOwXwv+qCRsoHLNrtofUiIYyQxgY6oQq7KeRIgt4dEFm7M63uq+Vro90PzFx9ohh2iVWaunjksxgT/ADtp7Ae8RuFVRlTZcwbo6t7G9oZYvUvOmvNb4pjvMNuWYkmIkCHGGT8tja3ha3nqNfP/AEjRMApHZELAjQb7xW+A6FaibdkNpSi1zcEk729o1KnpgIzZNmrFob01NaHsmRCyS4cy5cUsvSCS5VoJUNYQ8KRFV83W0QSDLMOUBhvTpDtRASKKINaACwlW1kuShmTXVEFhmY2FzoB5k9IEDY4VYga7iNDNanpikyaoLTHJHcyFGhaa2Zbm+mQG452in8UcVVVWkyVRy2loB4mN1nEAkm1rhVOXkb73y7GvcPzEppUxgFM3w+FvEszc5ZfhNmHxcgRcRfDF7ZmyZ/USytg1VUyzOIWas3RZsyaBrnHil2JWXLVgoCrbOVUkmwhen4RMiUfz05WluSJ8tFmgy2uEQIW8DX8VrkW6XEIcG1ryJizFIKNMVpktk5G93lAnwm4bTcKSRcDV9xtiuaWtQk0y0mTOlwB3dyuSylkYMSRmsdRvF+jLdlBx0AlHErISDmHeFi5z+Mi9yhIAOoFy7HXWLJg+LiUZU2W+XMcmRUZVL3UvroMwllGzAnUHY2iqcTOiTAspSuX4gXBsSLAZRoltR1tbnEvV1/5PJemmPY3R0Ww1V1urXIuBlZwR+1zgAH/bTVlS7gXZgmW5sGIdQG8OU83sTc+I87Wa1yNS1Rzsbkl9LXGrZRkGoFgm3lfQw0wQS5ZmCYVKrL70EhQWuFsOduQ3PO28SXDOCVGIlnmaSi4d5tvEzLm8KHp4mv5+mkN1yxoxcnSDmTUVNWSR35dg5RWyoATp3pCqBte1vI840hsE7+Wi1eQhVIySgUU5suYTLHxnwgXsL87w/wAMwyVToElqFG/UkncsTqSesOzFEslmvHhitjSVRypYCy0VQAALAaAaADy8ogeIsHlVCFXQX5NYZgeRBiyTIY1SXhLL2kYXUhw7LMv3isVfzI5j1FjBc0WPj6iyTlmAaTBr/Eth9MvtFXvGyLtWc2cak0BInW18ra7XOmv2wVSHOvhFiR9sI02w9T9DHVfL+H/5GBil27LakflLqBoZX2hl31/i/vfWpKxjPZkx/Kl13R7/AOGNppvuijJs04dCyLC6IYBIWSKVs0WJzzlUnpFelAuxb2ibxY/mm9IjaLaJZA7ky4cKsESGuPOVppzKSCJZIINiNtiIFG2EpUrIfiLjSnps0tGE2cBqqkZUPLvWvprbw7+m8ZXjuNT6xy05swVrog0RD8OgBNtwLm5MNKPVNedy3npfXrqTHYmdGHXfz1l7xfGKRknkctihrJryswJFly7nYbj9rQDSx3N4nezuiqZs5ZiLmCMSrFmDKctjYqb2te42IDDU2BSoReie+tg9r62tKQi3TXWLtwLIUU0qyqMwn5rADNlWXlv1tc29YsZUQ8/D5KPKnTpiqneMtmKhDplKgMQcpUAX0sFvyiR4plyxk74tNl90SzAFkCl8ygspsGC2GcEHwi97kREcQjxhP0bjw/o6jXTaElF5VaDqEpZGS+uW/eqcvTwgDTkIPoCpVjmXOd0Csi+FMyDbKVUsLAkheZ1uBreGOczpgL3PhC+dlFlt6AAfL1iT4h0aw0Hg0Gg+E8ohJbkG4JBBFiNCNB+JgAt/CvD71r6kCQtg5AYfCzES1vtvqdvu2CkpUloERQqqAABEB2eoBQybAC6gmw3JFyT5xZ4yzk2zdjgooIYKYM0dCWXITYQ2nJDgwlO2iLJoovaFR5qYsBqjK3yvlP2G/wAozKNi4tH+6zv+k/8AlMY9GrC/Ew9QvI//2Q=="
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                    </div>
                    <div class="act-double">
                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                        <div class="act-info">
                            <div class="act-img">
                                <img src="data:image/jpeg;base64,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"
                                    alt="">
                            </div>
                            <div class="act-title">
                                <p style="font-weight: bold;">Anna hathaway</p>
                                <p style="font-size: small; color: grey;">Jewel</p>
                            </div>
                        </div>
                    </div>-->
                    <div class="movie-info">
                        <div class="detail-row">
                            <span class="label">Director:</span> <span class="label-desc">Quang Huy
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="label">Writer:</span>
                            <span class="label-desc">Quang Huy </span>
                        </div>
                        <div class="detail-row">
                            <span class="label">All cast & crew</span>

                        </div>
                        <div class="detail-row">
                            <span class="label">Productions, box office</span>

                        </div>

                    </div>
                </div>
                <div class="userlist">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2>Movie list></h2>
                        <span class="arrow"></span>
                    </div>
                     <% 
                                        for(Trailer t: list6){
                                        
                                          
                                      %>
                    <div class="userlist-info">
                        <div class="userlist-details">
                            <p style="font-weight: 600px;"><%
                                          out.println(t.getMovieID().getTitle());
                                                    %></p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="userlist-img">
                          <a href="./movieDetail?id=<%= t.getMovieID().getMovieID() %>">
                          <img src="<% out.println(t.getImgUrl()); %>" alt="">
</a>

                        </div>

                    </div>
                                <% }%>
<!--                    <div class="userlist-info">
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">2024 Movies Watched</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="userlist-img">
                            <img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2022/07/Honor-Society-Similar-Movies-Featured-Image.jpg"
                                alt="">
                        </div>

                    </div>
                    <div class="userlist-info">
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">2024 Movies Watched</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="userlist-img">
                            <img src="https://press.hulu.com/app/uploads/2023/01/hicmk-s1-press-art-1920x1080-tile.jpg"
                                alt="">
                        </div>

                    </div>
                    <div class="userlist-info">
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">2024 Movies Watched</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="userlist-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_FMjpg_UX1000_.jpg"
                                alt="Rebel Moon">

                        </div>

                    </div>
                    <div class="userlist-info">
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">2024 Movies Watched</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="userlist-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFT2um-dHQ-wHUQM25IgaONXnKZVIaGGbNNw&s"
                                alt="">
                        </div>

                    </div>
                    <div class="userlist-info">
                        <div class="userlist-details">
                            <p style="font-weight: 600px;">2024 Movies Watched</p>
                            <p style="font-size: small; color: grey;">created 5 months ago · 21 titles</p>
                        </div>
                        <div class="userlist-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_FMjpg_UX1000_.jpg"
                                alt="Rebel Moon">

                        </div>

                    </div>-->
                </div>
            </div>


            <!-- more like this done -->
            <div class="morelikethis">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>More like this ?</h2>
                    <span class="arrow"></span>
                </div>
                <div class="morelikethis-big">
                    <% 
                                        for(Trailer t: list6){                                                                               
                                      %>
                    <div class="morelikethis-small">
                        <div class="morelikethis-img">
                            <img src = <%
                                                     out.println(t.getImgUrl());
                                                    %>
                            alt="">
                        </div>

                        <div class="morelikethis-des">
                            <div class="rating">
                                <span class="star">⭐</span>
                                <span class="rating-value " style="color: grey;">
                                    <%
                                          out.println(t.getMovieID().getRating());
                                                    %>
                                </span>
                            </div>
                            <div class="movie-title" style="margin-top: 10px;"><%
                                          out.println(t.getMovieID().getTitle());
                                                    %></div>
                            <button class="watchlist-button">+ Watchlist</button>

                        </div>
                    </div>
                            <% }%>
<!--                    <div class="morelikethis-small">
                        <div class="morelikethis-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BMTA4NTgwMjM5MzheQTJeQWpwZ15BbWU3MDg2ODA1ODk@._V1_.jpg"
                                alt="">
                        </div>

                        <div class="morelikethis-des">
                            <div class="rating">
                                <span class="star">⭐</span>
                                <span class="rating-value " style="color: grey;">7.3</span>
                            </div>
                            <div class="movie-title" style="margin-top: 10px;">Turbo</div>
                            <button class="watchlist-button">+ Watchlist</button>

                        </div>
                    </div>
                    <div class="morelikethis-small">
                        <div class="morelikethis-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_.jpg"
                                alt="">
                        </div>

                        <div class="morelikethis-des">
                            <div class="rating">
                                <span class="star">⭐</span>
                                <span class="rating-value " style="color: grey;">7.8</span>
                            </div>
                            <div class="movie-title" style="margin-top: 10px;">Despicable Me</div>
                            <button class="watchlist-button">+ Watchlist</button>

                        </div>
                    </div>
                    <div class="morelikethis-small">
                        <div class="morelikethis-img">
                            <img src="https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg"
                                alt="">
                        </div>

                        <div class="morelikethis-des">
                            <div class="rating">
                                <span class="star">⭐</span>
                                <span class="rating-value " style="color: grey;">9.3</span>
                            </div>
                            <div class="movie-title" style="margin-top: 10px;">Harry Potter</div>
                            <button class="watchlist-button">+ Watchlist</button>

                        </div>
                    </div>-->
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
                    In Rio de Janeiro, baby macaw, Blu, is captured by dealers and smuggled to the USA.
                    While driving
                    through Moose Lake, Minnesota, the truck that is transporting Blu accidentally drops
                    Blu's box on
                    the road. A girl, Linda, finds the bird and raises him with love. Fifteen years later,
                    Blu is a
                    domesticated and intelligent bird that does not fly and lives a comfortable life with
                    bookshop owner
                    Linda. Out of the blue, clumsy Brazilian ornithologist, Tulio, visits Linda and explains
                    that Blu is
                    the last male of his species, and he has a female called Jewel in Rio de Janeiro. He
                    invites Linda
                    to bring Blu to Rio so that he and Jewel can save their species. Linda travels with Blu
                    and Tulio to
                    Rio de Janeiro and they leave Blu and Jewel in a large cage in the institute where Tulio
                    works.
                    While they are having dinner, smugglers break into the institute and steal Blu and Jewel
                    to sell
                    them. Linda and Tulio look everywhere for Blu, who is chained to Jewel and hidden in a
                    slum.
                    Meanwhile, Jewel and Blu escape from their captors and befriend a group of birds that
                    help them to
                    get rid of the chains. It is Carnival and the smugglers and mean cockatoo, Nigel, do not
                    intend to
                    give up Blu and Jewel, and chase the birds through the crowded streets.
                </div>
                <button id="read-more-btn">Read More</button>
            </div>

            <!-- done as well  -->
            <div class="storyLine2">
                <div class="some">
                    <div class="hint">
                        brazil
                    </div>
                    <div class="hint">
                        snow adventure
                    </div>
                    <div class="hint">
                        bird
                    </div>
                    <div class="hint">
                        macaw
                    </div>
                    <div class="hint">
                        Film for kid
                    </div>
                    <div class="hint">
                        Best Animation of 2012
                    </div>
                </div>
                <!-- <div class="detail-row">
                    <span class="label">Taglines:</span>
                    <span class="label-desc">
                        The bird who never learned to fly will discover a place he can soar.</span>
                </div>
                <div class="detail-row">
                    <span class="label">Genres:</span>
                    <span class="label-desc">
                        Animation · Adventure · Comedy · Family · Music · Musical </div>
                </div> -->
            </div>


            <!-- did you know  -->
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
            <!-- tail wind  done-->
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
            

            <!-- user review done-->
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


            <!-- top pick done -->
            <div class="toppick">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Top Picks</h2>
                    <span class="arrow"></span>
                </div>
                <div class="topick-signin" style="color: #757575;">Sign in to rate and Watchlist for
                    personalized
                    recommendations</div>
                <div class="signin-button">Sign in</div>
            </div>

            <!-- fap  -->
            <!-- <div class="fap-userlist">
                <div class="faq">
                    <div class="header-news">
                        <span class="bar"></span>
                        <h2> FAQ></h2>
                        <span class="arrow"></span>
                    </div>
                    <div class="faq-content">
                        <div class="accordion" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                        aria-controls="panelsStayOpen-collapseOne">
                                        Câu hỏi về phim
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingOne">
                                    <div class="accordion-body">
                                        <strong>This is the first item's accordion body.</strong> It is
                                        shown by
                                        default,
                                        until the collapse plugin adds the appropriate classes that we use
                                        to style
                                        each
                                        element. These classes control the overall appearance, as well as
                                        the
                                        showing
                                        and
                                        hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding
                                        our default variables. It's also worth noting that just about any
                                        HTML can
                                        go
                                        within
                                        the <code>.accordion-body</code>, though the transition does limit
                                        overflow.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseTwo">
                                        Câu hỏi
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTwo">
                                    <div class="accordion-body">
                                        <strong>This is the second item's accordion body.</strong> It is
                                        hidden by
                                        default,
                                        until the collapse plugin adds the appropriate classes that we use
                                        to style
                                        each
                                        element. These classes control the overall appearance, as well as
                                        the
                                        showing
                                        and
                                        hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding
                                        our default variables. It's also worth noting that just about any
                                        HTML can
                                        go
                                        within
                                        the <code>.accordion-body</code>, though the transition does limit
                                        overflow.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseTwo">
                                        Câu hỏi
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTwo">
                                    <div class="accordion-body">
                                        <strong>This is the second item's accordion body.</strong> It is
                                        hidden by
                                        default,
                                        until the collapse plugin adds the appropriate classes that we use
                                        to style
                                        each
                                        element. These classes control the overall appearance, as well as
                                        the
                                        showing
                                        and
                                        hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding
                                        our default variables. It's also worth noting that just about any
                                        HTML can
                                        go
                                        within
                                        the <code>.accordion-body</code>, though the transition does limit
                                        overflow.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseThree">
                                        Accordion Item #3
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingThree">
                                    <div class="accordion-body">
                                        <strong>This is the third item's accordion body.</strong> It is
                                        hidden by
                                        default,
                                        until the collapse plugin adds the appropriate classes that we use
                                        to style
                                        each
                                        element. These classes control the overall appearance, as well as
                                        the
                                        showing
                                        and
                                        hiding via CSS transitions. You can modify any of this with custom
                                        CSS or
                                        overriding
                                        our default variables. It's also worth noting that just about any
                                        HTML can
                                        go
                                        within
                                        the <code>.accordion-body</code>, though the transition does limit
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
            </div> -->
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


            <!-- detail  -->

            <div class="details">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Details></h2>
                    <span class="arrow"></span>
                </div>
                <div class="movie-info">
                    <div class="detail-row">
                        <span class="label">Release date:</span> <span class="label-desc"><%=listdetailmovie.get(0).getMovieID().getRealaseTime()%>
                            (United
                            Kingdom)
                            ></span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Countries of origin:</span>
                        <span class="label-desc">United States · United Kingdom</span>
                    </div>
                    <div class="detail-row">
                        <span class="label">Official sites:</span>
                        <span class="label-desc"><a href="#" class="link">Official Facebook</a> ·
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
                        <span class="label">Also known as:</span> <span class="label-desc"><%=listdetailmovie.get(0).getMovieID().getTitle()%></span>
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


            <!-- box office  -->
            <div class="box-office">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Box Office></h2>
                    <span class="arrow"></span>
                </div>
                <div class="box-office-info1">
                    <div class="box-office-info2">
                        <div class=" box-office-detail">
                            <p><strong>Budget</strong><br>
                                $90,000,000 (estimated)</p>

                        </div>
                        <div class=" box-office-detail">
                            <p><strong>Opening weekend US & Canada</strong><br>
                                $39,225,962Apr 17, 2011</p>
                        </div>
                    </div>
                    <div class="box-office-info2">
                        <div class=" box-office-detail">
                            <p><strong>Gross US & Canada</strong><br>
                                Gross US & Canada</p>
                        </div>
                        <div class=" box-office-detail">
                            <p><strong>Budget</strong><br>
                                $90,000,000 (estimated)</p>
                        </div>
                    </div>
                </div>

            </div>


            <!-- technical spec  -->
            <div class="technical-specs">
                <div class="header-news">
                    <span class="bar"></span>
                    <h2>Technical special></h2>
                    <span class="arrow"></span>
                </div>
                <div class="movie-details">
                    <div class="detail-item">
                        <span class="label">Runtime:</span> <span class="label-desc">1 hour 36
                            minutes</span>
                    </div>
                    <div class="detail-item">
                        <span class="label">Color:</span> <span class="label-desc">Color</span>
                    </div>
                    <div class="detail-item">
                        <span class="label">Sound mix:</span> <span class="label-desc">Dolby · Datasat ·
                            SDDS ·
                            Dolby
                            Surround 7.1</span>
                    </div>
                    <div class="detail-item">
                        <span class="label">Aspect ratio:</span> 2.35 : 1 · 2.39 : 1
                    </div>
                </div>

            </div>



            <!-- relatednews  -->
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



    <!-- footer  -->
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



    <script src="contribute1.js"></script>
    <!--<script src="morelikethis1.js"></script>-->
    <script src="storyline.js"></script>
    <script src="userreview1.js"></script>
    <!--<script src="morelikethisimg1.js"></script>-->
</body>

</html>
