<%-- 
    Document   : gestisci
    Created on : 10-feb-2015, 21.20.20
    Author     : Luca
--%>

<%
    String risposta;
    
    if (session.getAttribute("username") != null){
        if ("adm".equals((String)session.getAttribute("username"))){
            risposta = "Pagina di gestione prodotto tramite modifica a database.";
        }else{
            risposta = "Pagina di acquisto prodotto.";
        }
    }else{
        risposta = "Nessun utente loggato.";
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TW-COMMERCE</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <article>
            <p class="risposta font18 bold"><%=risposta%></p>
        </article>
        <footer>
            <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
