<%-- 
    Document   : checklog
    Created on : 5-feb-2015, 9.54.22
    Author     : Luca
--%>

<%
    String risposta;
    
    String usernameApp = (String) application.getAttribute("username");
    String passwordApp = (String) application.getAttribute("password");
    
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (usernameApp != null && usernameApp.equals(username) && passwordApp.equals(password)){
        
        session.setAttribute("name", application.getAttribute("name"));
        session.setAttribute("surname", application.getAttribute("surname"));
        session.setAttribute("pagamento", application.getAttribute("pagamento"));
        risposta = "L'utente " + application.getAttribute("name") + " " + application.getAttribute("surname") + " ha effettuato il login.";
    }else{
        risposta = "Errore di login";
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
        <div id="main">
            <header>
                <%@include file="header.jspf" %>
            </header>
            <div id="content">
                <p id="risposta">
                    <%=risposta%>
                </p>
            </div>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
