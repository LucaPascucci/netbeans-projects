<%-- 
    Document   : Animated_Box
    Created on : 6-feb-2015, 23.19.05
    Author     : iMac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header id="menubar1">
            <%@include file="header.jspf" %>
        </header>
        <div class="flip3D">
            <div class="back">Box 1 - Dietro</div>
            <div class="front">Box 1 - Davanti</div>
        </div>
        <div class="flip3D">
            <div class="back">Box 2 - Dietro</div>
            <div class="front">Box 2 - Davanti</div>
        </div>
        <div class="flip3D">
            <div class="back">Box 3 - Dietro</div>
            <div class="front">Box 3 - Davanti</div>
        </div>
    </body>
</html>
