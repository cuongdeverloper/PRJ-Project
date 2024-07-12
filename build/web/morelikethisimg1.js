const movies = [
    {
        img: "https://i.natgeofe.com/n/560b293d-80b2-4449-ad6c-036a249d46f8/rio-de-janeiro-travel_2x3.jpg"
    },
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz-uMc_kgFCXaVlbbmRAspcJD-NdlyeJo-AA&s"
    },
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ0cpm37VXmGxksKhIzoxG03it4iIRn22XpA&s"
    },
    {
        img: "https://live.staticflickr.com/3718/13807190353_e4df9afd99_b.jpg"
    },
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0ZlD4ccpzReBhNL-UDljyGUWD2RV3VWyopQ&s"
    },
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0AaC2GecAq7TgY5ywivyXw5r7Qn5uuchQzQ&s"
    },
    {
        img: "https://wallpaper.forfun.com/fetch/23/239993498692142bd6e79412d5bd46a3.jpeg"
    },
    {
        img: "https://wallpapercave.com/wp/wp7248010.jpg"
    },
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG0t0Z067rcqR7P8EqVe3HmFz94KhMkvd-Mw&s"
    },
    {
        img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ0cpm37VXmGxksKhIzoxG03it4iIRn22XpA&s"
    },
    // Add more movie objects here
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