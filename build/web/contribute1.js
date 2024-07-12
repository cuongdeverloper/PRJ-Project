const submitButton = document.querySelector('.contribute-submit button'); // Sửa lỗi chính tả
const form = document.querySelector('.form-css');

submitButton.addEventListener('click', (event) => {
    event.preventDefault(); // Gọi hàm preventDefault()
    alert('Thank you for your contribution!');
    form.reset();
});
