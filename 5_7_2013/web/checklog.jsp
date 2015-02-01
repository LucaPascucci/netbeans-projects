<%-- 
    Document   : checklog
    Created on : 30-gen-2015, 15.44.17
    Author     : Luca
--%>

<%
    String risposta;
    String usernameApp = (String) application.getAttribute("username");
    String passwordApp = (String) application.getAttribute("password");
    
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (usernameApp != null && usernameApp.equals(username) && passwordApp.equals(password)){
        
        String name = (String) application.getAttribute("name");
        String surname = (String) application.getAttribute("surname");
        String place = (String) application.getAttribute("place");
        String prov = (String) application.getAttribute("prov");
        
        session.setAttribute("name", name);
        session.setAttribute("surname", surname);
        session.setAttribute("place", place);
        session.setAttribute("prov", prov);
        
        risposta = "L'utente " + name + " " + surname + " ha effettuato il login";
    }else{
        risposta = "Errore di Login";
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
        <div id="container">
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%>
            </nav>
            <%@include file="status.jspf"%>
            <article>
                <div class="risposta">
                    <%=risposta%>
                </div>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
    </head>
    </body>
</html>
