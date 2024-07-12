const videos = [
    {
        embed: "https://www.youtube.com/embed/3NVpz6FgwOU?autoplay=1&mute=1"
    },
    {
        embed: "https://www.youtube.com/embed/3NVpz6FgwOU?autoplay=1&mute=1"
    },
    {
        embed: "https://cdn.britannica.com/57/222657-050-F60D5A74/Publicity-still-of-English-actor-Tom-Hardy-2017.jpg"
    },
    {
        embed: "https://www.youtube.com/embed/3NVpz6FgwOU?autoplay=1&mute=1"
    },
    // Add more video objects here
];

let currentIndex = 0;
const visibleSlides = 4;

function updateSlider() {
    const slider = document.getElementById('video-slider');
    slider.innerHTML = '';
    for (let i = 0; i < visibleSlides; i++) {
        const video = videos[(currentIndex + i) % videos.length];
        const isImage = video.embed.endsWith(".jpg") || video.embed.endsWith(".png") || video.embed.endsWith(".jpeg");
        const videoElement = `
            <div class="video-small">
                <div class="video-embed">
                    ${isImage ? `<img src="${video.embed}" alt="image">` : `<iframe src="${video.embed}" allowfullscreen></iframe>`}
                </div>
            </div>
        `;
        slider.innerHTML += videoElement;
    }
}

function slide(direction) {
    const slider = document.getElementById('video-slider');
    slider.style.transition = 'transform 0.5s ease';
    slider.style.transform = `translateX(${direction * -100}%)`;

    setTimeout(() => {
        currentIndex = (currentIndex + direction + videos.length) % videos.length;
        slider.style.transition = 'none';
        slider.style.transform = 'translateX(0)';
        updateSlider();
    }, 500);
}

// Initial load
updateSlider();