<%-- 
    Document   : checkreg
    Created on : 11-nov-2014, 14.28.34
    Author     : Luca
--%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check registration</title>
    </head>
    <body>
        <h1>Controllo registrazione...</h1>
        <%
            String nomevar = request.getParameter("nome");
            String cognomevar = request.getParameter("cognome");
            String uservar = request.getParameter("user");
            String passvar = request.getParameter("pass");
            
            Map<String,String[]> mappaRegistrazioni = (Map<String,String[]>)application.getAttribute("registrazioni");
            
            if (mappaRegistrazioni == null){
                mappaRegistrazioni = new HashMap<>();
                application.setAttribute("registrazioni", mappaRegistrazioni);
            }else{
                mappaRegistrazioni = (Map<String,String[]>)application.getAttribute("registrazioni");
            }
            mappaRegistrazioni.put(uservar,new String[]{passvar,nomevar,cognomevar});

            
            //memorizzazione dei parametri
//            application.setAttribute("nome", nomevar);
//            application.setAttribute("cognome", cognomevar);
//            application.setAttribute("user", uservar);
//            application.setAttribute("pass", passvar);
            
            session.invalidate(); //per sloggare il vecchio utente
        %>
        <p>
            Registrazione di <%= nomevar%> <%= cognomevar%> con username: <%= uservar%> effettuata con successo!!
        </p>
        <a href="index.jsp">Back to home</a>
    </body>
</html>
