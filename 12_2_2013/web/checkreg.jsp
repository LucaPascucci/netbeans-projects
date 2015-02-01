<%-- 
    Document   : checkreg
    Created on : 27-gen-2015, 10.41.46
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    public boolean checkField(String field){
        return field != null && !field.isEmpty();
    }
%>

<%
    String risposta;
    {
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        String name = (String) request.getParameter("nome");
        String surname = (String) request.getParameter("cognome");
        String mail = (String) request.getParameter("mail");
        
        if (checkField(username) && checkField(password) && checkField(name) && checkField(surname) && checkField(mail)){
            
            application.setAttribute("name", name);
            application.setAttribute("surname", surname);
            application.setAttribute("mail", mail);
            application.setAttribute("username", username);
            application.setAttribute("password", password);
            
            risposta = "Utente " + name + " " + surname + " registrato con successo!!!";
            session.removeAttribute("name");
            session.removeAttribute("surname");
            session.removeAttribute("mail");
        }else{
            risposta = "Errore nei dati di registrazione!";
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo registrazione...</title>
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
