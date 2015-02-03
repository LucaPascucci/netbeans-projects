<%-- 
    Document   : checklog
    Created on : 3-feb-2015, 15.52.25
    Author     : Luca
--%>

<%
    String risposta;
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if ("lettore5".equals(username) && "a4a4".equals(password)){
        risposta = "L'utente " + username + " ha effettuato il login.";
        session.setAttribute("login", username);
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
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <div class="font20 bold">
                <%=risposta%>
            </div>
            <footer>
            <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
