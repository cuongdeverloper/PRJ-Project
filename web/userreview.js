        // Mảng chứa các thông tin review mới
        const newReviews = [
            {
                title: "Amazing Experience",
                content: "This movie was absolutely stunning! The animation was top-notch and the storyline was captivating from start to finish. Highly recommend for all ages.",
                reactions: {
                    thumbsUp: 500,
                    heart: 350,
                    thumbsDown: 5
                }
            },
            {
                title: "A Visual Feast",
                content: "The visuals in this film are breathtaking. Every scene is a masterpiece. While the plot was a bit predictable, the overall experience was enjoyable.",
                reactions: {
                    thumbsUp: 400,
                    heart: 300,
                    thumbsDown: 10
                }
            },
            {
                title: "Good Family Movie",
                content: "Took my kids to see this movie and they loved it. The characters are very likable and the humor was spot on. A great family outing.",
                reactions: {
                    thumbsUp: 600,
                    heart: 450,
                    thumbsDown: 2
                }
            }
        ];

        function updateReview() {
    // Lấy review ngẫu nhiên từ mảng newReviews
    const newReview = newReviews[Math.floor(Math.random() * newReviews.length)];

    // Cập nhật tiêu đề review
    document.querySelector('.review-title').textContent = newReview.title;

    // Cập nhật nội dung review
    document.querySelector('.review-content').textContent = newReview.content;

    // Cập nhật reactions
    const reactions = document.querySelector('.reactions');
    reactions.innerHTML = `
        <span class="reaction">
            <i class="fas fa-thumbs-up"></i> ${newReview.reactions.thumbsUp}
        </span>
        <span class="reaction">
            <i class="fas fa-heart"></i> ${newReview.reactions.heart}
        </span>
        <span class="reaction">
            <i class="fas fa-thumbs-down"></i> ${newReview.reactions.thumbsDown}
        </span>
    `;
}


        // Sau 30 giây sẽ thay đổi thông tin review
        setTimeout(updateReview, 10000); // 10 giây
