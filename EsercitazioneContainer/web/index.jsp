<%-- 
    Document   : index
    Created on : 18-nov-2014, 14.09.00
    Author     : Luca
--%>
<%@page  import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="main.css" type="text/css"></link>
    </head>
    <body>
        <header>
            <%@include file="top.jspf"%>
        </header
        <nav>
             <%@include file="navBar.jspf"%>
        </nav>
        <article>
            <p>Benvenuto nell'esercitazione Fragments</p>
            <p>La data &egrave;: <%= new Date() %> </p>
        </article>
    </body>
</html>
