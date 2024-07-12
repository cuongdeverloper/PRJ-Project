
        document.addEventListener("DOMContentLoaded", function () {
            const readMoreBtn = document.getElementById("read-more-btn");
            const storyContent = document.getElementById("story-content");

            readMoreBtn.addEventListener("click", function () {
                if (storyContent.classList.contains("truncate")) {
                    storyContent.classList.remove("truncate");
                    readMoreBtn.textContent = "Show Less";
                    storyContent.style.maxHeight = storyContent.scrollHeight +
                        "px"; // Set max-height to the scrollHeight
                } else {
                    storyContent.classList.add("truncate");
                    readMoreBtn.textContent = "Read More";
                    storyContent.style.maxHeight = "100px"; // Restore max-height to 100px
                }
            });
        });