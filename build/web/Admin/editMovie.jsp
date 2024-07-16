<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KingMovie - Edit Movie</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Your CSS styles here */
    </style>
</head>

<body>
    <div class="flex">
        <!-- Sidebar -->
        <!-- Replace with your sidebar HTML -->

        <!-- Main Content -->
        <div class="flex-1 p-6">
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-2xl font-bold">${movieById.title}</h1>
                <!-- Save Changes button and other actions -->
                <div class="flex items-center space-x-4">
                    <button class="bg-blue-600 text-white px-4 py-2 rounded">SAVE CHANGES</button>
                </div>
            </div>

            <div class="flex space-x-6">
                <!-- Video Section -->
                <div class="w-1/2 bg-white p-6 shadow rounded">
                    <!-- Video related information -->
                    <div class="flex items-center justify-between mb-4">
                        <!-- Video controls -->
                    </div>
                    <!-- Additional video related settings -->
                    <div class="mt-4">
                        <!-- Language and subtitles -->
                    </div>
                    <div class="mt-4">
                        <!-- Genre -->
                    </div>
                </div>
                <!-- Info Section -->
                <div class="w-1/2 bg-white p-6 shadow rounded">
                    <!-- Movie details form -->
                    <form action="./adminController?action=updateMovies" method="post">
                        <div class="mb-6">
                            <label class="block text-gray-700">Movie Title</label>
                            <input type="text" class="w-full border border-gray-300 rounded p-2 mt-1"
                                name="title" value="${movieById.title}">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700">Plot</label>
                            <textarea class="w-full border border-gray-300 rounded p-2 mt-1"
                                rows="4" name="plot">${movieById.plot}</textarea>
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700">Release Time</label>
                            <input type="text" class="w-full border border-gray-300 rounded p-2 mt-1"
                                name="realaseTime" value="">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700">Certificate</label>
                            <input type="text" class="w-full border border-gray-300 rounded p-2 mt-1"
                                name="certificate" value="${movieById.certificate}">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700">Rating</label>
                            <input type="text" class="w-full border border-gray-300 rounded p-2 mt-1"
                                name="rating" value="${movieById.rating}">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700">Director</label>
                            <input type="number" class="w-full border border-gray-300 rounded p-2 mt-1"
                                id="director" name="director" min="1" max="99" value="${movieById.directorID}" required>
                        </div>
                        <!-- Add more fields as needed -->

                        <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded">SAVE CHANGES</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
