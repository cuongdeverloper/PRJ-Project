const movies = [
    {
        img: "https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/08/tom-hardy-s-10-best-movies-ranked-by-rotten-tomatoes.jpg"
    },
    {
        img: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/03/9-Essential-Tom-Hardy-Movies.jpg"
    },
    {
        img: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/12/the-10-best-tom-hardy-movies-according-to-letterboxd.jpg"
    },
    {
        img: "https://cdn.britannica.com/57/222657-050-F60D5A74/Publicity-still-of-English-actor-Tom-Hardy-2017.jpg"
    },
    {
        img: "https://cdn.mos.cms.futurecdn.net/FifmHeLyj94r3yBVLChsPC.jpg"
    },
    {
        img: "https://hips.hearstapps.com/hmg-prod/images/tomhardy2504d-1551095887.jpg?crop=0.668xw:1.00xh;0.185xw,0&resize=2048:*"
    },
    {
        img: "https://cdn.mos.cms.futurecdn.net/ZLwDpNhEBESrzkSod3NS7k.jpg"
    },
    {
        img: "https://hips.hearstapps.com/hmg-prod/images/tomhardy2504d-1551095887.jpg?crop=0.668xw:1.00xh;0.185xw,0&resize=2048:*"
    },
    {
        img: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/12/the-10-best-tom-hardy-movies-according-to-letterboxd.jpg"
    },
    {
        img: "https://www.thesun.co.uk/wp-content/uploads/2017/12/nintchdbpict000371538430.jpg"
    },
    // Add more movie objects here
];

let currentIndex = 0;
const visibleSlides = 5;

function updateSlider() {
    const slider = document.getElementById('slider');
    slider.innerHTML = '';
    for (let i = 0; i < visibleSlides; i++) {
        const movie = movies[(currentIndex + i) % movies.length];
        const movieElement = `
            <div class="morelikethis-small">
                <div class="morelikethis-img">
                    <img src="${movie.img}" alt="">
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

// Initial load
updateSlider();