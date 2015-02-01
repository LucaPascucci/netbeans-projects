<%-- 
    Document   : checklog
    Created on : 22-gen-2015, 11.43.41
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
        String mail = (String) application.getAttribute("mail");
        
        session.setAttribute("name", name);
        session.setAttribute("surname", surname);
        session.setAttribute("mail", mail);
        
        risposta = "L'utente " + name + " " + surname + " con e-mail: " + mail + " ha effettuato il login.";
    }else{
        risposta = "Errore di login";
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo accesso</title>
        <link rel="stylesheet" href="style.css" type="text/css"/>
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
                <%=risposta%>
            </article>
            <footer></footer>
        </div>
    </body>
</html>
