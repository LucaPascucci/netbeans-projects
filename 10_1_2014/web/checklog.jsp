<%-- 
    Document   : checklog
    Created on : 2-feb-2015, 10.16.05
    Author     : Luca
--%>

<%
    String risposta;
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (("rossim".equals(username) && "rossino".equals(password))||("bianchil".equals(username) && "bianchino".equals(password))){
        session.setAttribute("username", username);
        risposta = "L'utente " + username + " ha effettuato il login.";
    }else{
        session.removeAttribute("username");
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
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="risposta">
            <%=risposta%>
        </div>
        <footer>
            <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
