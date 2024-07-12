<%@page import="Database.ConnectionDB"%>
<%@page import="Model.Movie" %>
<%@page import="java.util.List" %>
<%@page import="Model.Trailer" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    List <Trailer> trailerList = ConnectionDB.getListTrailer();
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./HomePage/rightcontent.css">

    </head>
    
</html>
