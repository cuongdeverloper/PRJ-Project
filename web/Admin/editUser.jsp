<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KingMovie - Edit User Information</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100">
    <div class="flex">
        <div class="w-1/5 bg-gray-800 text-white h-screen p-4">
            <div class="text-xl font-bold mb-6">KingMovie</div>
            <nav>
                <ul>
                    <li class="mb-4">
                        <a href="#" class="flex items-center text-yellow-500">
                            Users 
                        </a>
                    </li>
                    <li class="mb-4">
                        <a href="#" class="flex items-center">
                            Movies
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center">
                            Profile
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="w-4/5 p-10 bg-white">
            <h2 class="text-2xl font-bold mb-8">Edit User Information</h2>
            <form class="space-y-6 max-w-md">
                <div>
                    <label for="fullName" class="block text-sm font-medium text-gray-700">User Name</label>
                    <input type="text" id="fullName" name="fullName" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" value="John Doe">
                </div>
                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                    <input type="password" id="password" name="password" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" value="********">
                </div>
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                    <input type="email" id="email" name="email" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" value="john.doe@example.com">
                </div>
                <div>
                    <label for="priority" class="block text-sm font-medium text-gray-700">Priority</label>
                    <input type="text" id="priority" name="priority" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" value="1">
                </div>
                <div>
                    <button type="submit" class="w-full py-2 px-4 bg-blue-600 text-white font-medium rounded-md shadow-sm hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                        Update
                    </button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://unpkg.com/@material-ui/icons@latest/"></script>
</body>
</html>
