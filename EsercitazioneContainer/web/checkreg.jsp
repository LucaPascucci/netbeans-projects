<%-- 
    Document   : index
    Created on : 18-nov-2014, 14.09.00
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="main.css" type="text/css"></link>
    </head>
    <body>
        <header>
            <%@include file="top.jspf"%>
        </header
        <nav>
             <%@include file="navBar.jspf"%>
        </nav>
        <article>
            <h1>Controllo registrazione...</h1>
        <%
            String nomevar = request.getParameter("nome");
            String cognomevar = request.getParameter("cognome");
            String uservar = request.getParameter("user");
            String passvar = request.getParameter("pass");
            
//            Map<String,String[]> mappaRegistrazioni = (Map<String,String[]>)application.getAttribute("registrazioni");
//            
//            if (mappaRegistrazioni == null){
//                mappaRegistrazioni = new HashMap<>();
//                application.setAttribute("registrazioni", mappaRegistrazioni);
//            }else{
//                mappaRegistrazioni = (Map<String,String[]>)application.getAttribute("registrazioni");
//            }
//            mappaRegistrazioni.put(uservar,new String[]{passvar,nomevar,cognomevar});

            
            //memorizzazione dei parametri
            application.setAttribute("nome", nomevar);
            application.setAttribute("cognome", cognomevar);
            application.setAttribute("user", uservar);
            application.setAttribute("pass", passvar);
            
            session.invalidate(); //per sloggare il vecchio utente
        %>
        <p>
            Registrazione di <%= nomevar%> <%= cognomevar%> con username: <%= uservar%> effettuata con successo!!
        </p>
        </article>
    </body>
</html>
