<%-- 
    Document   : testarrdata
    Created on : Jun 17, 2024, 9:44:41 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%
  List<Integer> list = new ArrayList<>();
  list.add(1);
  list.add(2);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        for(Integer x : list){
        %>
        <h1><%=x%></h1>
        <%
            }
        %>
        
    </body>
</html>
