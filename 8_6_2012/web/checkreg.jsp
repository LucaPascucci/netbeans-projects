<%-- 
    Document   : checkreg
    Created on : 4-feb-2015, 9.52.10
    Author     : Luca
--%>

<%! public boolean checkValue(String value){
        return value != null && !value.isEmpty();
    }

    public boolean checkInterval(String val,Integer max){
        try {
            Integer number = Integer.parseInt(val);
            return number >= 0 && number <= max;
        } catch (NumberFormatException exc){
            return false;
        }
        
    }
%>

<%
    String risposta;
    String name = (String) request.getParameter("nomemaya");
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    String u = (String) request.getParameter("uinal");
    String t = (String) request.getParameter("tun");
    String k = (String) request.getParameter("katun");
    String b = (String) request.getParameter("baktun");
    
    if (checkValue(name) && checkValue(username) && checkValue(password) && checkInterval(u,17) && checkInterval(t,19) && checkInterval(k,19) && checkInterval(b,12)){
   
        risposta = "Utente " + name + " registrato con successo";
        application.setAttribute("nomemaya", name);
        application.setAttribute("uinal", u);
        application.setAttribute("tun", t);
        application.setAttribute("katun", k);
        application.setAttribute("baktun", b);
        application.setAttribute("username", username);
        application.setAttribute("password", password);
        
        session.removeAttribute("nomemaya");
        session.removeAttribute("uinal");
        session.removeAttribute("tun");
        session.removeAttribute("katun");
        session.removeAttribute("baktun");
    }else{
        risposta = "Errore nei dati di registrazione";
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo Registrazione</title>
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
