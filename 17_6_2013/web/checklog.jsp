<%-- 
    Document   : checklog
    Created on : 29-gen-2015, 12.00.43
    Author     : Luca
--%>

<%
    String risposta;
    String registeredUsername = (String) application.getAttribute("username");
    String registeredPassword = (String) application.getAttribute("password");
    
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
   
    if (registeredUsername != null && registeredUsername.equals(username) && registeredPassword.equals(password)){
        
        String name = (String) application.getAttribute("nome");
        String surname = (String) application.getAttribute("cognome");
        String nascita = (String) application.getAttribute("nascita");
        
        session.setAttribute("nome", name);
        session.setAttribute("cognome", surname);
        session.setAttribute("nascita", nascita);
        
        risposta = "Utente " + name + " " + surname + " ha effettuato correttamente il login.";
    }else{
        risposta = "Errore di login";
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo Login</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="container">
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%>
            </nav>
            <article>
                <div class="risposta">
                    <%= risposta %>
                </div>
            </article>
            <footer></footer>
        </div>
    </body>
</html>
