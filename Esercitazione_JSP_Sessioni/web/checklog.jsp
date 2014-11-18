<%-- 
    Document   : checklog
    Created on : 11-nov-2014, 14.29.10
    Author     : Luca
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Esito Login</title>
    </head>
    <body>
        <h1>Esito Login</h1>
        <p>
            <%

//                String username = (String) application.getAttribute("user");
//                String password = (String) application.getAttribute("pass");
//                String nome = (String) application.getAttribute("nome");
//                String cognome = (String) application.getAttribute("cognome");
                //if (username != null && password != null && username.equals(request.getParameter("username")) && password.equals(request.getParameter("password"))) {
                Map<String, String[]> mappaRegistrazioni = (Map<String, String[]>) application.getAttribute("registrazioni");
                if (mappaRegistrazioni != null) {
                    String[] valoriUser = mappaRegistrazioni.get(request.getAttribute("username"));
                    if (valoriUser != null && valoriUser[0].equals(request.getParameter("password"))) {%>
                    
        <h1>Accesso Effettuato con successo!</h1>
        <p>
            <%-- Il nome dell'utente loggato &egrave; <%= nome%> --%>
            Il nome dell'utente loggato &egrave; <%= valoriUser[1]%>
        </p>

        <p>
            <%-- La cognome dell'utente loggato &egrave; <%= cognome%> --%>
            La cognome dell'utente loggato &egrave; <%= valoriUser[2]%>
        </p>
                    <% session.setAttribute("nome", valoriUser[1]);
                    session.setAttribute("cognome", valoriUser[2]);
                    
                    } else {%>
                    <h1>Credenziali errate!</h1>
                    <%}%>


            

        <% } //session.setAttribute("nome", nome);
            //session.setAttribute("cognome", cognome);else {%>
            <h1>Credenziali errate!</h1>
        <%
            }
        %>
    </p>
    <a href ="index.jsp">Back to Home</a>
</body>
</html>
