<%-- 
    Document   : checkreg
    Created on : 22-gen-2015, 11.42.04
    Author     : Luca
--%>

<%! public boolean checkValue(String value){
    return value !=null && !value.isEmpty();
}
%>

<%
    String risposta;
    String name = (String)request.getParameter("name");
    String surname = (String)request.getParameter("surname");
    String mail = (String) request.getParameter("mail");
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    
    if (checkValue(name) && checkValue(surname) && checkValue(mail) && checkValue(username) && checkValue(password)){
        application.setAttribute("name",name);
        application.setAttribute("surname",surname);
        application.setAttribute("mail", mail);
        application.setAttribute("username", username);
        application.setAttribute("password", password);
        
        session.removeAttribute("name");
        session.removeAttribute("surname");
        session.removeAttribute("mail");
        
        risposta = "Utente " + name + " " + surname + " registrato con successo.";
    }else{
        risposta = "Valori immessi non corretti!";
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controllo registrazione</title>
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
                <%= risposta%>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
