<%-- 
    Document   : checklog
    Created on : 10-feb-2015, 21.19.51
    Author     : Luca
--%>

<%
    String risposta;
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if ("adm".equals(username) && "123".equals(password)){
        session.setAttribute("username", "adm");
        session.removeAttribute("name");
        session.removeAttribute("surname");
        risposta = "L'amministratore ha effettuato il login";
    }else{
        String usernameApp = (String) application.getAttribute("username");
        String passwordApp = (String) application.getAttribute("password");
        
        if (usernameApp != null && usernameApp.equals(username) && password.equals(password)){
            
            String name = (String) application.getAttribute("name");
            String surname = (String) application.getAttribute("surname");
            
            session.setAttribute("username", username);
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            risposta = "L'utente " + name + " " + surname + " ha effettuato il login.";
        }else{
            risposta = "Errore di login";
        }
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
            <p class="risposta"><%=risposta%></p>
        </article>
        <footer>
                <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
