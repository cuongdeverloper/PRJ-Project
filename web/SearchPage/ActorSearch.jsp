<%-- 
    Document   : ActorSearch
    Created on : 13 thg 7, 2024, 12:21:13
    Author     : 1
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.ConnectionDB" %>
<%@page import="java.util.*" %>
<%@page import="Model.Actor" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String title = request.getParameter("query");
    List<Actor> list = ConnectionDB.searchActors(title);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actor Search Results</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f8f9fa;
            }
            .container {
                width: 80%;
                margin: 20px auto;
                padding: 20px;
                background-color: #ffffff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            h1 {
                text-align: center;
                color: #333333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th, td {
                padding: 12px;
                border: 1px solid #dddddd;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
                color: #333333;
            }
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            img {
                width: 100px;
                height: 100px;
                object-fit: cover;
                border-radius: 4px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Actor Search Results</h1>
            <p>Total results: <%=list.size()%></p>
            <table>
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Nationality</th>
                        <th>Date of Birth</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Actor t : list){%>
                    <tr>
                        <td><a href="./actorDetail?id=<%=t.getActorID()%>"><img src="<%=t.getActorImg()%>" alt="Actor Image"></a></td>
                        <td><%=t.getActorName()%></td>
                        <td><%=t.getNationality()%></td>
                        <td><%=t.getDOB() == null ? "Unknown" : t.getDOB()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
