<%-- 
    Document   : footer
    Created on : Jun 6, 2024, 7:57:04 AM
    Author     : aser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    </head>
    <body>
        <div class="whole-site">
        <div class="cele">
            <div class="col-12 header-cele">
                <span class="bar"></span>
                <h3>Most popular celebrities ></h3>
                <span class="arrow"></span>
            </div>
            <div class="col-12 info-cele" id="celebritiesContainer">
                <div class="col-md-2 col-sm-6 info-each">
                    <div class="info-img">
                        <img src="https://m.media-amazon.com/images/M/MV5BYjAwYzA2YzUtMjU2OS00NjNlLTk3ZmItMWFhY2FjZmQzNWMzXkEyXkFqcGdeQXVyMTE5MTQ1OTQ2._V1_.jpg" alt="Jennifer Morrison"><br>
                        <div class="rank">19 ( <span style="color: green;">▲</span> 312 )</div>
                        <h5>Jennifer Morrison</h5>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 info-each">
                    <div class="info-img">
                        <img src="https://hips.hearstapps.com/hmg-prod/images/tom-holland-attends-the-los-angeles-premiere-of-sony-news-photo-1683915930.jpg?crop=0.596xw:0.894xh;0.226xw,0.106xh&resize=1200:*" alt="Tom Holland"><br>
                        <div class="rank">19 ( <span style="color: green;">▲</span> 312 )</div>
                        <h5>Tom Holland</h5>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 info-each">
                    <div class="info-img">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrR4skTP7597DRrDaxEztS0HZMUSjnTSm3HQ&s" alt="Nicola Coughlan"><br>
                        <div class="rank">19 ( <span style="color: green;">▲</span> 312 )</div>
                        <h5>Nicola Coughlan</h5>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 info-each">
                    <div class="info-img">
                        <img src="https://m.media-amazon.com/images/M/MV5BMDRjYjFjNjMtYTA0Zi00NTU1LTlhNjQtNWFlZjE3NTZlYWQ5XkEyXkFqcGdeQXVyNjc2MTYzMDA@._V1_CR160,0,892,1338_FMjpg_UX1000_.jpg" alt="Luke Newton"><br>
                        <div class="rank">19 ( <span style="color: green;">▲</span> 312 )</div>
                        <h5>Luke Newton</h5>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 info-each">
                    <div class="info-img">
                        <img src="https://m.media-amazon.com/images/M/MV5BMTllYmE5YTYtZGZmYy00ZTBlLWJlODEtYWQ0ZmU1YTJkMjJlXkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_FMjpg_UX1000_.jpg" alt="Anya Taylor-Joy"><br>
                        <div class="rank">19 ( <span style="color: green;">▲</span> 312 )</div>
                        <h5>Anya Taylor-Joy</h5>
                    </div>
                </div>
                <div class="col-md-2 col-sm-12">
                    <button class="next-button" id="nextButton"></button>
                </div>
            </div>
        </div>
    </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
    const celebrities = [
        {
            img: "https://m.media-amazon.com/images/M/MV5BYjAwYzA2YzUtMjU2OS00NjNlLTk3ZmItMWFhY2FjZmQzNWMzXkEyXkFqcGdeQXVyMTE5MTQ1OTQ2._V1_.jpg",
            rank: "19 ( <span style='color: green;'>▲</span> 312 )",
            name: "Jennifer Morrison"
        },
        {
            img: "https://hips.hearstapps.com/hmg-prod/images/tom-holland-attends-the-los-angeles-premiere-of-sony-news-photo-1683915930.jpg?crop=0.596xw:0.894xh;0.226xw,0.106xh&resize=1200:*",
            rank: "19 ( <span style='color: green;'>▲</span> 312 )",
            name: "Tom Holland"
        },
        {
            img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrR4skTP7597DRrDaxEztS0HZMUSjnTSm3HQ&s",
            rank: "19 ( <span style='color: green;'>▲</span> 312 )",
            name: "Nicola Coughlan"
        },
        {
            img: "https://m.media-amazon.com/images/M/MV5BMDRjYjFjNjMtYTA0Zi00NTU1LTlhNjQtNWFlZjE3NTZlYWQ5XkEyXkFqcGdeQXVyNjc2MTYzMDA@._V1_CR160,0,892,1338_FMjpg_UX1000_.jpg",
            rank: "19 ( <span style='color: green;'>▲</span> 312 )",
            name: "Luke Newton"
        },
        {
            img: "https://m.media-amazon.com/images/M/MV5BMTllYmE5YTYtZGZmYy00ZTBlLWJlODEtYWQ0ZmU1YTJkMjJlXkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_FMjpg_UX1000_.jpg",
            rank: "19 ( <span style='color: green;'>▲</span> 312 )",
            name: "Anya Taylor-Joy"
        }
    ];

    let currentIndex = 0;

    $('#nextButton').click(function() {
        currentIndex = (currentIndex + 1) % celebrities.length;
        const nextCeleb = celebrities[currentIndex];

        $('#celebritiesContainer').fadeOut(400, function() {
            $(this).find('.info-each').each(function(index) {
                const celebIndex = (currentIndex + index) % celebrities.length;
                const celeb = celebrities[celebIndex];
                $(this).find('img').attr('src', celeb.img);
                $(this).find('.rank').html(celeb.rank);
                $(this).find('h5').text(celeb.name);
            });
            $(this).fadeIn(400);
        });
    });
});

    </script>
</body>
</html>