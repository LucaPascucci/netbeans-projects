<%-- 
    Document   : index
    Created on : 18-nov-2014, 14.09.00
    Author     : Luca
--%>

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
            <div>Pagina di Registrazione</div>
            <form method="get" action="checkreg.jsp">
            <p>Nome: <input type="text" name="nome"></p>
            <p>Cognome: <input type="text" name="cognome"></p>
            <p>Username: <input type="text" name="user"></p>
            <p>Password: <input type="text" name="pass"></p>
            <input type="submit" value="invia dati">
            </form>
        </article>
    </body>
</html>
