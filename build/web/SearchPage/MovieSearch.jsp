<%-- 
    Document   : MovieSearch
    Created on : 13 thg 7, 2024, 01:36:01
    Author     : 1
--%>

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
        <title>JSP Page</title>
    </head>
    <body>
        <p><%=list.size()%></p>
        <table border="1">
        <thead>
            <tr>
                <th>Title</th>
                
            </tr>
        </thead>
        <tbody>
            <%for(Trailer t : list){%>
                <tr>
                    <td><%=t.getMovieID().getTitle()%></td>
                    
                </tr>
                <%}%>
            
        </tbody>
    </table>
        
    </body>
</html>
