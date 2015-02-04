<%-- 
    Document   : checklog
    Created on : 4-feb-2015, 9.52.19
    Author     : Luca
--%>

<%
    String risposta;
    
    String usernameApp = (String) application.getAttribute("username");
    String passwordApp = (String) application.getAttribute("password");
    
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (usernameApp != null && usernameApp.equals(username) && passwordApp.equals(password)){
        
        String nomemaya = (String) application.getAttribute("nomemaya");
        
        session.setAttribute("nomemaya", nomemaya);
        session.setAttribute("uinal", application.getAttribute("uinal"));
        session.setAttribute("tun", application.getAttribute("tun"));
        session.setAttribute("katun", application.getAttribute("katun"));
        session.setAttribute("baktun", application.getAttribute("baktun"));
        risposta = "L'utente " + nomemaya + " ha effettuato il login.";
    }else{
        risposta="Errore di login";
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
            <div id="top">
                <%@include file="top.jspf" %>
            </div>
            <div id="navbar">
                <%@include file="navbar.jspf" %>
            </div>
            <div id="statusbar">
                <%@include file="statusbar.jspf" %>
            </div>
            <div id="content">
                <div id="risposta">
                    <%= risposta%>
                <div>
            </div>
        </div>
    </body>
</html>
