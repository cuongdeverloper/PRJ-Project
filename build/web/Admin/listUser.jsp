<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    List<User> listU = (List<User>) session.getAttribute("userslist");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Users Information - Admin Dashboard</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <style>
            /* Reset default margin and padding */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                line-height: 1.6;
            }

            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                width: 250px;
                height: 100%;
                background: #333;
                color: #fff;
                padding-top: 50px;
            }

            .side-header {
                text-align: center;
                margin-bottom: 20px;
            }

            .side-header h3 {
                font-size: 1.5rem;
                margin-bottom: 5px;
            }

            .side-header span {
                color: #007bff;
            }

            .side-content {
                padding: 0 20px;
            }

            .profile {
                text-align: center;
                margin-bottom: 20px;
            }

            .profile-img {
                width: 80px;
                height: 80px;
                border-radius: 50%;
                margin: 0 auto 10px auto;
                background-size: cover;
                background-position: center;
            }

            .side-menu ul {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .side-menu ul li {
                margin-bottom: 10px;
            }

            .side-menu ul li a {
                display: block;
                color: #fff;
                text-decoration: none;
                padding: 10px;
                border-left: 4px solid transparent;
            }

            .side-menu ul li a.active {
                border-left-color: #007bff;
            }

            .main-content {
                margin-left: 250px;
                padding: 20px;
            }

            .header-content {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background-color: #fff;
                padding: 10px 20px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                z-index: 1000;
                position: fixed;
                top: 0;
                left: 250px;
                right: 0;
            }

            .header-menu {
                display: flex;
                align-items: center;
            }

            .header-menu label, .header-menu div {
                margin-left: 10px;
                cursor: pointer;
            }

            .header-menu .user button {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 8px 12px;
                cursor: pointer;
                font-size: 0.9rem;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .header-menu .user button:hover {
                background-color: #0056b3;
            }

            .page-header {
                margin-bottom: 20px;
            }

            .page-header h1 {
                font-size: 2rem;
                margin-bottom: 10px;
            }

            .page-header small {
                color: #6c757d;
            }

            .records {
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .record-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .add select {
                margin-right: 10px;
                padding: 8px;
            }

            .add .button {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                font-size: 1em;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .add .button:hover {
                background-color: #0056b3;
            }

            .browse {
                display: flex;
                align-items: center;
            }

            .browse input[type="search"] {
                padding: 8px;
                margin-right: 10px;
            }

            .record-search, .browse select {
                padding: 8px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            table th, table td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            table th {
                background-color: #f2f2f2;
                font-weight: normal;
            }

            .client {
                display: flex;
                align-items: center;
            }

            .client-img {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                margin-right: 10px;
                background-size: cover;
                background-position: center;
            }

            .client-info {
                flex: 1;
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
                    <div class="profile-img bg-img" style="background-image: url('img/3.jpeg')"></div>
                    <h4>Admin</h4>
                    <small>Controller</small>
                </div>

                <div class="side-menu">
                    <ul>
                        <li>
                            <a href="./adminController?action=listUsers" class="active">
                                <span class="las la-home"></span>
                                <small>Users Manager</small>
                            </a>
                        </li>

                        <li>
                            <a href="./adminController?action=listMovies">
                                <span class="las la-film"></span>
                                <small>Movies Manager</small>
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
                                <span>Logout</span>
                            </button>
                        </div>
                    </div>
                </div>
            </header>

            <main>
                <div class="page-header">
                    <h1>Users Information</h1>
                    <small>Home / Users</small>
                </div>

                <div class="page-content">
                    <div class="records table-responsive">
                        <div class="record-header">
                            <div class="add">
                                <span>Entries</span>
                                <select name="" id="">
                                    <option value="">ID</option>
                                </select>
                                <a href="./adminController?action=addUsers">
                                <button class="button">Add User</button>
                                </a>
                            </div>

                            <div class="browse">
                                <input type="search" placeholder="Search" class="record-search">
                                <select name="" id="">
                                    <option value="">Status</option>
                                </select>
                            </div>
                        </div>

                        <div>
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <th>UserID</th>
                                        <th><span class="las la-user"></span> UserName</th>
                                        <th><span class="las la-lock"></span> Password</th>
                                        <th><span class="las la-envelope"></span> Email</th>
                                        <th><span class="las la-star"></span> Priority</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (User user : listU) { %>
                                    <tr>
                                        <td><%= user.getUserID() %></td>
                                        <td>
                                            <div class="client">
                                                <div class="client-img bg-img" style="background-image: url('img/3.jpeg')"></div>
                                                <div class="client-info">
                                                    <h4><%= user.getUserName() %></h4>
                                                    <small><%= user.getPassword() %></small>
                                                </div>
                                            </div>
                                        </td>
                                        <td><%= user.getEmail() %></td>
                                        <td><%= user.getPriority() %></td>
                                        <td>
                                            <div class="actions">
                                                <a href="./adminController?action=deleteUsers&query=<%= user.getUserID() %>">
                                                    <span class="las la-trash-alt"></span>
                                                </a>

                                                <a href="#" onclick="showMoreActions('<%= user.getUserID() %>')">
                                                    <span class="las la-ellipsis-v"></span>
                                                </a>
                                            </div>

                                        </td>
                                    </tr>
                                    <% } %>
                                    <!-- Additional rows here -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
        </div>

    </body>
</html>
