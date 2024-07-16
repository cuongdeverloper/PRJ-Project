
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.ConnectionDB" %>
<%@page import="java.util.*" %>
<%@page import="Model.Trailer" %>
<%@page import="Model.Movie" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String title = request.getParameter("query");
    List<Trailer> list = ConnectionDB.searchMovies(title);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Search Results</title>
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
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Movie Search Results</h1>
            <p>Total results: <%=list.size()%></p>
            <table>
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Title</th>
                        <th>Plot</th>
                        <th>Number of like</th>
                        <th>Release Time</th>
                        <th>Certificate</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Trailer m : list){%>
                    <tr>
                        <td><a href="./movieDetail?id=<%=m.getMovieID().getMovieID()%>"><img src="<%=m.getImgUrl()%>"></a></td>
                        <td><%=m.getMovieID().getTitle()%></td>
                        <td><%=m.getMovieID().getPlot()%></td>
                        <td><%=m.getMovieID().getNumberOfLikes()%> Liked</td>
                        <td><%=m.getMovieID().getRealaseTime()%></td>                        
                        <td><%=m.getMovieID().getCertificate()%></td>
                        
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>