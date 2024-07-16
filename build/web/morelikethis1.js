const movies = [
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9X7yXFIb6dCrNwohQKy93rXMbIsTbhB9HBQ&s",
        rating: "6.3",
        title: "Rio 2"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BMTA4NTgwMjM5MzheQTJeQWpwZ15BbWU3MDg2ODA1ODk@._V1_.jpg",
        rating: "7.3",
        title: "Turbo"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_.jpg",
        rating: "7.8",
        title: "Despicable Me"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg",
        rating: "9.3",
        title: "Harry Potter"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BMjMxODYyODEzN15BMl5BanBnXkFtZTgwMDk4OTU0MzE@._V1_.jpg",
        rating: "9.3",
        title: "Harry Potter"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BMTM3NjQyODI3M15BMl5BanBnXkFtZTcwMDM4NjM0OA@@._V1_FMjpg_UX1000_.jpg",
        rating: "9.3",
        title: "Harry Potter"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg",
        rating: "9.3",
        title: "Harry Potter"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg",
        rating: "9.3",
        title: "Harry Potter"
    },
    {
        img: "https://m.media-amazon.com/images/M/MV5BYWJmNzRiMWEtNzk3Ni00OGU5LThlMDctYmJhMTA1YzEzNjY4XkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_FMjpg_UX1000_.jpg",
        rating: "9.3",
        title: "Harry Potter"
    },
];

let currentIndex = 0;
const visibleSlides = 4;

function updateSlider() {
    const slider = document.getElementById('slider');
    slider.innerHTML = '';
    for (let i = 0; i < visibleSlides; i++) {
        const movie = movies[(currentIndex + i) % movies.length];
        const movieElement = `
            <div class="morelikethis-small">
                <div class="morelikethis-img">
                    <img src="${movie.img}" alt="${movie.title}">
                </div>
                <div class="morelikethis-des">
                    <div class="rating">
                        <span class="star">⭐</span>
                        <span class="rating-value" style="color: grey;">${movie.rating}</span>
                    </div>
                    <div class="movie-title" style="margin-top: 10px;">${movie.title}</div>
                    <button class="watchlist-button">+ Watchlist</button>
                </div>
            </div>
        `;
        slider.innerHTML += movieElement;
    }
}

function slide(direction) {
    const slider = document.getElementById('slider');
    slider.style.transition = 'transform 0.5s ease';
    slider.style.transform = `translateX(${direction * -100}%)`;

    setTimeout(() => {
        currentIndex = (currentIndex + direction + movies.length) % movies.length;
        slider.style.transition = 'none';
        slider.style.transform = 'translateX(0)';
        updateSlider();
    }, 500);
}

// Automatically update the slider every 5 seconds
setInterval(() => {
    slide(1);
}, 5000);

// Initial load
updateSlider();