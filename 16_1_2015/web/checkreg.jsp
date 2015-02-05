<%-- 
    Document   : checkreg
    Created on : 5-feb-2015, 9.54.13
    Author     : Luca
--%>
<%! public boolean checkValue(String value){
    return value != null && !value.isEmpty();
}
%>
<%
    String risposta;
    String name = (String) request.getParameter("name");
    String surname = (String) request.getParameter("surname");
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    String pagamento = (String) request.getParameter("pagamento");
    
    if (checkValue(name) && checkValue(surname) && checkValue(username) && checkValue(password) && checkValue(pagamento)){
        
        application.setAttribute("name", name);
        application.setAttribute("surname", surname);
        application.setAttribute("pagamento", pagamento);
        application.setAttribute("username", username);
        application.setAttribute("password", password);
        
        session.removeAttribute("name");
        session.removeAttribute("surname");
        session.removeAttribute("pagamento");
        
        risposta = "Utente " + name + " " + surname + " registrato con successo.";
    }else{
        risposta = "Errore di registrazione";
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
        <div id="main">
            <header>
                <%@include file="header.jspf" %>
            </header>
            <div id="content">
                <p id="risposta">
                    <%= risposta %>
                </p>
            </div>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
