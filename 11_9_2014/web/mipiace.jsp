<%-- 
    Document   : mipiace
    Created on : 3-feb-2015, 15.51.23
    Author     : Luca
--%>
<%
    String risposta;
    String autore = (String) request.getParameter("autore");
    
    if (application.getAttribute(autore) == null || "".equals((String)application.getAttribute(autore))){
        application.setAttribute(autore, "lettore5");
        risposta = "Mi piace indicato per l'autore " + autore;
    }else{
        application.setAttribute(autore, "");
        risposta = "Non mi piace indicato per l'autore " + autore;
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestione apprezzamento</title>
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
