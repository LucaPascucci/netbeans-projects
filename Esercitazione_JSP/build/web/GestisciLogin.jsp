<%-- 
    Document   : GestisciLogin
    Created on : 4-nov-2014, 14.34.49
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
final String LOGIN_PASSWORD = "Luca";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestisci Login</title>
    </head>
    <body>
        <h1>Risultato Login</h1>
        <%
        if (LOGIN_PASSWORD.equals(request.getParameter("Login")) && LOGIN_PASSWORD.equals(request.getParameter("Password"))){%>
            <h1>Accesso Effettuato con successo!</h1>
            <p>
            Il login &egrave; <%= request.getParameter("Login")%> 
            </p>

            <p>
            La password &egrave; <%= request.getParameter("Password")%>
            </p>
        <%}else{%>
        <h1>Credenziali errate!</h1>
        <%}%>

        
    </body>
</html>
