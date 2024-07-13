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
        <title>JSP Page</title>
    </head>
    <body>
        <p><%=list.size()%></p>
        <table border="1">
            <thead>
                <tr>
                    <th>Name</th>

                </tr>
            </thead>
            <tbody>
                <%for(Actor t : list){%>
                <tr>
                    <td><%=t.getActorName()%></td>

                </tr>
                <%}%>

            </tbody>
        </table>
    </body>
</html>
