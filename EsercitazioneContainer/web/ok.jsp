<%-- 
    Document   : ok
    Created on : 18-nov-2014, 15.41.10
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
            <h1>Esito Login</h1>
            
            <p>Accesso Effettuato con successo!</p>
            
            <p>Utente: <%= session.getAttribute("nome") %> <%= session.getAttribute("cognome") %> loggato con successo</p>
    </article>
</body>
</html>
