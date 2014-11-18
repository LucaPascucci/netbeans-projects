<%-- 
    Document   : logout
    Created on : 11-nov-2014, 15.35.05
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Esito Logout</title>
    </head>
    <body>
        <h1>Esito Logout</h1>
        <%  
            String nomeSessione = (String) session.getAttribute("nome");
            String cognomeSessione = (String) session.getAttribute("cognome");
            
            session.invalidate();
        %>
        <p>
            L'utente <%= nomeSessione%> <%= cognomeSessione%> si &egrave; correttamente sloggato... La caviglia!
        </p>
        <a href="index.jsp">Back to Home</a>
    </body>
</html>
