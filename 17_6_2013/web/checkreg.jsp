<%-- 
    Document   : checkreg
    Created on : 29-gen-2015, 12.00.33
    Author     : Luca
--%>

<%! boolean checkValue(String value){
    return value != null && !value.isEmpty();
}
%>

<%
    String risposta;
    String name = (String) request.getParameter("nome");
    String surname = (String) request.getParameter("cognome");
    String nascita = (String) request.getParameter("nascita");
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (checkValue(name) && checkValue(surname) && checkValue(nascita) && checkValue(username) && checkValue(password)){
        
        application.setAttribute("nome", name);
        application.setAttribute("cognome", surname);
        application.setAttribute("nascita", nascita);
        application.setAttribute("username", username);
        application.setAttribute("password", password);
        
        session.removeAttribute("nome");
        session.removeAttribute("cognome");
        session.removeAttribute("nascita");
        
        risposta = "Utente " + name + " " + surname + " registrato con successo!";
    }else{
        risposta = "Dati immessi non corretti!!";
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo Registrazione</title>
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
