<%-- 
    Document   : checklog
    Created on : 2-feb-2015, 15.34.12
    Author     : Luca
--%>

<%
    String risposta;
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (username != null && "12345".equals(password)){
        session.setAttribute("login", username);
        risposta = "L'utente " + username + " ha effettuato il login";
    }else{
        session.removeAttribute("login");
        risposta = "Errore di login";
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo Login</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <%=risposta%>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
