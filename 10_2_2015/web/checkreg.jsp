<%-- 
    Document   : checkreg
    Created on : 10-feb-2015, 21.20.02
    Author     : Luca
--%>
<%!
    public boolean checkValue(String value){
        return value != null && !value.isEmpty();
    }
%>


<%
  String risposta;
  String username = (String) request.getParameter("username");
  String password = (String) request.getParameter("password");
  String name = (String) request.getParameter("name");
  String surname = (String) request.getParameter("surname");
  
  if (checkValue(name) && checkValue(name) && checkValue(name) && checkValue(name)){
      
      application.setAttribute("name", name);
      application.setAttribute("surname", surname);
      application.setAttribute("username", username);
      application.setAttribute("password", password);
      
      session.removeAttribute("username");
      session.removeAttribute("name");
      session.removeAttribute("surname");
      
      risposta = "Utente " + name + " " + surname + " registrato con successo.";
  }else{
      risposta = "Dati immessi non corretti.";
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
        <header>
            <%@include file="header.jspf" %>
        </header>
        <article>
            <p class="risposta"><%=risposta%></p>
        </article>
        <footer>
            <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
