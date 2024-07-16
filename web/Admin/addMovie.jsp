<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KingMovie - Add Movie</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f3f4f6;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .form-section label {
            font-weight: 500;
            margin-bottom: 8px;
            display: block;
        }
        .form-section input[type=text], 
        .form-section textarea,
        .form-section select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 10px;
            font-size: 16px;
        }
        .form-section select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M3.293 7.293a1 1 0 011.414 0L10 12.586l5.293-5.293a1 1 0 111.414 1.414l-6 6a1 1 0 01-1.414 0l-6-6a1 1 0 010-1.414z"/></svg>');
            background-repeat: no-repeat;
            background-position: right 10px top 50%;
            background-size: 20px;
            padding-right: 40px;
        }
        .form-section button {
            background-color: #3182ce;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .form-section button:hover {
            background-color: #2c5282;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Add New Movie</h1>
        
        <div class="form-section">
            <form action="./adminController?action=addMovies" method="POST" >
                <div class="mb-4">
                    <label for="title" class="block">Movie Title</label>
                    <input type="text" id="title" name="title" required>
                </div>
                <div class="mb-4">
                    <label for="releaseTime" class="block">Release Time</label>
                    <input type="text" id="releaseTime" name="releaseTime" required>
                </div>
                <div class="mb-4">
                    <label for="plot" class="block">Plot</label>
                    <textarea id="plot" name="plot" rows="4" required></textarea>
                </div>
               <div class="mb-4">
                <label for="director" class="block">Director</label>
                <input type="number" id="director" name="director" min="1" max="99" required>
                </div>
                <div class="mb-4">
                    <label for="genre" class="block">Genre</label>
                    <input type="number" id="genre" name="genre" min="1" max="15" required>
                </div>
                <div class="mb-4">
                    <label for="movieLength" class="block">Movie Length</label>
                    <input type="text" id="movieLength" name="movieLength">
                </div>
                <div class="mb-4">
                    <label for="rating" class="block">Rating</label>
                    <input type="text" id="rating" name="rating">
                </div>
                <div class="mb-4">
                    <label for="certificate" class="block">Certificate</label>
                    <input type="text" id="certificate" name="certificate">
                </div>              
                <div class="mb-4">
                    <label for="image" class="block">Image URL</label>
                    <input type="text" id="image" name="imageUrl">
                </div>
                  <div class="mb-4">
                    <label for="image" class="block">Background</label>
                    <input type="text" id="image" name="imageBia">
                </div>
                    <div class="mb-4">
                    <label for="image" class="block">Photo</label>
                    <input type="text" id="image" name="imagePhoto">
                </div>
                        
                 <div class="mb-4">
                    <label for="trailer" class="block">Trailer Video URL</label>
                    <input type="text" id="trailer" name="trailer">
                </div>       
                <div class="mt-6">
                    <button type="submit">Add Movie</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
