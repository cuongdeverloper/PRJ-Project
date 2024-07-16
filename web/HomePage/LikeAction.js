document.addEventListener("DOMContentLoaded", function () {
    var likedList = JSON.parse(localStorage.getItem('likedlist')) || [];

    const buttons = document.querySelectorAll('.like-button');
    buttons.forEach(function (button) {
        const buttonId = button.id;

        if (likedList.includes(buttonId)) {
            button.classList.add('green-button'); // Nếu có, thêm lớp green-button
        } else {
            button.classList.add('red-button'); // Nếu không, thêm lớp red-button
        }

        button.addEventListener('click', function () {
            var likedList1 = JSON.parse(localStorage.getItem('likedlist')) || [];
            var xhr = new XMLHttpRequest();
            var url = "http://localhost:8080/Group_Projevt/Action";
            xhr.open("POST", url, true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    let result = xhr.responseText;
                    console.log("Response Text:", xhr.responseText);
                    if (result == 'unliked') {
                        let index = likedList1.indexOf(buttonId);
                        if (index !== -1) {
                            likedList1.splice(index, 1);
                     
                            button.classList.remove('green-button');
                            button.classList.add('red-button');
                        }

                    } else if (result == 'liked') {                       
                        likedList1.push(buttonId);
                        button.classList.add('green-button');
                        button.classList.remove('red-button');

                    }

                    localStorage.setItem('likedlist',JSON.stringify(likedList1));
                }
            };
            var params = new URLSearchParams();
            params.append("MovieID",buttonId);

            if (likedList1.includes(buttonId)) {
                params.append("method", "unlike");

            } else {
                params.append("method", "like");
            }
          
            

            console.log('Button ID:', buttonId);
            xhr.send(params.toString());
        });
    });
});
