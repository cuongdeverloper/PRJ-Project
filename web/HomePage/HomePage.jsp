<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <title>King Movie</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>     
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="./HomePage/HomePage.css">
        <title>HomePage</title>
    </head>

    <body>
        <div class="HomePage-container">
                <jsp:include page="Header.jsp" />                

            <div class="HomePage-body">
                <%--<jsp:include page="testarrdata.jsp" />--%>
                <%--<jsp:include page="first-content.jsp" />--%>
                <jsp:include page="newfirst-ctn.jsp" />
                <jsp:include page="feartured-today.jsp" />
                <jsp:include page="actor.jsp" />
                <jsp:include page="TopInMonth.jsp" />
                
                <jsp:include page="footer.jsp" />
                
            </div>

            <div class="HomePage-footer">

            </div>


        </div>
    </body>

</html>