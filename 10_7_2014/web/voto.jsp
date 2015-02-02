<%-- 
    Document   : voto
    Created on : 2-feb-2015, 15.34.30
    Author     : Luca
--%>

<%
    String autore = (String) request.getParameter("autore");
    if ("bianchi".equals(autore)){
        if(application.getAttribute("bianchi") == null){
            application.setAttribute("bianchi",1);
        }else{
            Integer count = (Integer) application.getAttribute("bianchi");
            count++;
            application.setAttribute("bianchi",count);
        }
    }else if("rossi".equals(autore)){
        if(application.getAttribute("rossi") == null){
            application.setAttribute("rossi",1);
        }else{
            Integer count = (Integer) application.getAttribute("rossi");
            count++;
            application.setAttribute("rossi",count);
        }
    }
    String risposta = "Voto conteggiato per l'autore " + autore;
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <%=risposta%>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
