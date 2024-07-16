<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="Model.User"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>Modern Admin Dashboard</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f3f4f6;
            }
            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                width: 240px;
                height: 100%;
                background-color: #2b2f3e;
                color: #ffffff;
                padding-top: 20px;
            }
            .sidebar .side-header {
                text-align: center;
                margin-bottom: 20px;
            }
            .sidebar .side-header h3 {
                font-size: 1.5rem;
                margin-bottom: 5px;
            }
            .sidebar .side-header span {
                color: #ffc107;
            }
            .sidebar .profile {
                text-align: center;
                margin-bottom: 20px;
            }
            .sidebar .profile h4 {
                margin: 5px 0;
            }
            .sidebar .profile small {
                color: #b3b3b3;
            }
            .sidebar .side-menu ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }
            .sidebar .side-menu ul li {
                margin-bottom: 10px;
            }
            .sidebar .side-menu ul li a {
                display: block;
                color: #ffffff;
                text-decoration: none;
                padding: 10px;
                transition: background-color 0.3s ease;
            }
            .sidebar .side-menu ul li a:hover {
                background-color: #3d4251;
            }
            .main-content {
                margin-left: 240px;
                padding: 20px;
                background-color: #ffffff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .header {
                background-color: #ffffff;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .header .header-content {
                display: flex;
                align-items: center;
            }
            .header .header-content label {
                cursor: pointer;
            }
            .header .header-menu {
                display: flex;
                align-items: center;
            }
            .header .header-menu label {
                cursor: pointer;
                margin-right: 10px;
            }
            .header .header-menu .notify-icon {
                position: relative;
                margin-right: 10px;
            }
            .header .header-menu .notify-icon .notify {
                position: absolute;
                top: -5px;
                right: -5px;
                background-color: #007bff;
                color: #ffffff;
                font-size: 0.7rem;
                padding: 2px 5px;
                border-radius: 50%;
            }
            .header .header-menu .user button {
                background-color: #007bff;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                font-size: 1em;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }
            .header .header-menu .user button:hover {
                background-color: #0056b3;
            }
            .page-header {
                margin-bottom: 20px;
            }
            .page-header h1 {
                font-size: 2rem;
                margin-bottom: 5px;
            }
            .page-header small {
                color: #b3b3b3;
            }
            .record-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }
            .record-header .add {
                display: flex;
                align-items: center;
            }
            .record-header .add span {
                margin-right: 10px;
            }
            .record-header .add button {
                margin-left: 10px;
            }
            .record-header .browse {
                display: flex;
                align-items: center;
            }
            .record-header .browse input,
            .record-header .browse select {
                margin-right: 10px;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            .records table {
                width: 100%;
                border-collapse: collapse;
            }
            .records table th,
            .records table td {
                border: 1px solid #ccc;
                padding: 10px;
                text-align: left;
            }
            .records table th {
                background-color: #f2f2f2;
            }
            .client {
                display: flex;
                align-items: center;
            }
            .client .client-img {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                background-size: cover;
                background-position: center;
                margin-right: 10px;
            }
            .client .client-info h4 {
                margin: 0;
            }
            .client .client-info small {
                color: #b3b3b3;
            }
            .actions button {
                background: none;
                border: none;
                cursor: pointer;
                font-size: 1.2em;
            }
            .actions button:hover {
                color: #007bff;
            }
            .actions button span {
                font-size: 1.5em;
            }
            .button {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                font-size: 1em;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }
            .button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <input type="checkbox" id="menu-toggle">
        <div class="sidebar">
            <div class="side-header">
                <h3>King<span>Movie</span></h3>
            </div>

            <div class="side-content">
                <div class="profile">
                    <div class="profile-img bg-img" style="background-image: url(img/3.jpeg)"></div>
                    <h4>Admin</h4>
                    <small>Controller</small>
                </div>

                <div class="side-menu">
                    <ul>
                        <li>
                            <a href="./adminController?action=listMovies" class="active">
                                <span class="las la-home"></span>
                                <small>Movies Manager</small>
                            </a>
                        </li>

                        <li>
                            <a href="./adminController?action=listUsers" class="active">
                                <span class="las la-home"></span>
                                <small>Users Manager</small>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="main-content">

            <header>
                <div class="header-content">
                    <label for="menu-toggle">
                        <span class="las la-bars"></span>
                    </label>

                    <div class="header-menu">
                        <label for="">
                            <span class="las la-search"></span>
                        </label>

                        <div class="notify-icon">
                            <span class="las la-envelope"></span>
                            <span class="notify">4</span>
                        </div>

                        <div class="notify-icon">
                            <span class="las la-bell"></span>
                            <span class="notify">3</span>
                        </div>

                        <div class="user">
                            <button class="button">
                                <span class="las la-power-off"></span>
                                <span><a class="dropdown-item" href="Logout">Logout</a></span>
                            </button>
                        </div>
                    </div>
                </div>
            </header>

            <main>

                <!-- Page header -->
                <div class="page-header">
                    <h1>Movies Information</h1>
                    <small>Home / Movies</small>
                </div>

                <!-- Page content -->
                <div class="page-content">
                    <div class="records table-responsive">

                        <!-- Record header with search and add options -->
                        <div class="record-header">
                            <div class="add">
                                <span>Entries</span>
                                <select name="" id="">
                                    <option value="">ID</option>
                                </select>
                                <a href="./adminController?action=addMovies">
                                    <button class="button">Add Movies</button>
                                </a>
                            </div>

                            <div class="browse">
                                <input type="search" placeholder="Search" class="record-search">
                                <select name="" id="">
                                    <option value="">Status</option>
                                </select>
                            </div>
                        </div>

                        <!-- Movie list table -->
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>MovieID</th>
                                        <th>Title</th>
                                        <th>GenreID</th>
                                        <th>Rating</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Loop through movies list -->
                                    <c:forEach items="${sessionScope.movieslist}" var="movie">
                                        <tr>
                                            <td>${movie.movieID}</td>
                                            <td>
                                                <div class="client">
                                                    <div class="client-img bg-img" style="background-image: url(img/3.jpeg)"></div>
                                                    <div class="client-info">
                                                        <h4>${movie.title}</h4>
                                                        <small>${movie.movieLength}</small>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>${movie.genreID.genreID}</td>
                                            <td>${movie.rating}/10</td>
                                            <td>
                                                <!-- Action buttons -->
                                                <div class="actions">
                                                    <button onclick="sendTelegram('${movie.movieID}')">
                                                        <span class="las la-telegram-plane"></span>
                                                    </button>
                                                    <a href="./adminController?action=editMovies&query=${movie.movieID}">
                                                        <button>
                                                            <span class="las la-edit"></span>
                                                        </button>
                                                    </a>
                                                    <a href="./adminController?action=deleteMovies&query=${movie.movieID}">
                                                        <button>
                                                            <span class="las la-trash-alt"></span>
                                                        </button>
                                                    </a>

                                                    <button onclick="showMoreActions('${movie.movieID}')">
                                                        <span class="las la-ellipsis-v"></span>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <!-- End Page content -->

            </main>

        </div>


    </body>
</html>
