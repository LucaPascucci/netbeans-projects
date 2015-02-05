<%-- 
    Document   : acquista
    Created on : 5-feb-2015, 9.54.33
    Author     : Luca
--%>

<%
    String risposta;
    String pagamento = "";
    
    if(session.getAttribute("pagamento")!=null){
        pagamento = (String) session.getAttribute("pagamento");
        risposta = "Grazie per l'acquisto. La modalità scelta per il pagamento è: ";
    }else{
        risposta = "Nessun utente loggato, impossibile eseguire l'acquisto";
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
                    <%=risposta%><span><%=pagamento%></span>.
                </p>
            </div>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
