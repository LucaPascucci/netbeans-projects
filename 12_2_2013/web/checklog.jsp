<%-- 
    Document   : checklog
    Created on : 27-gen-2015, 10.42.04
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String risposta;
    {
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        
        String registeredUsername = (String) application.getAttribute("username");
        String registeredPassword = (String) application.getAttribute("password");
        
        if (registeredUsername != null && registeredUsername.equals(username) && registeredPassword.equals(password)){
            
            String name = (String) application.getAttribute("name");
            String surname = (String) application.getAttribute("surname");
            String mail = (String) application.getAttribute("mail");
            
            session.setAttribute("name",name);
            session.setAttribute("surname",surname);
            session.setAttribute("mail",mail);
            
            risposta = "L'utente " + name + " " + surname + " con e-mail: " + mail + " ha effettuato il login consuccesso.";
        } else {
            risposta = "Errore di login";
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo accesso...</title>
        <link href="style.css" rel="stylesheet" text="text/css">
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
                <%= risposta %>
            </article>
            <footer>
            </footer>
        </div>
    </body>
</html>
