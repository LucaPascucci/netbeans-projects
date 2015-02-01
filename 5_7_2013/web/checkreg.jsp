<%-- 
    Document   : checkreg
    Created on : 30-gen-2015, 15.44.26
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
    String place = (String) request.getParameter("place");
    String prov = (String) request.getParameter("prov");
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    
    if (checkValue(name) && checkValue(surname) && checkValue(place) && checkValue(prov) && checkValue(username) && checkValue(password)){
        
        application.setAttribute("name", name);
        application.setAttribute("surname", surname);
        application.setAttribute("place", place);
        application.setAttribute("prov", prov);
        application.setAttribute("username", username);
        application.setAttribute("password", password);
         
        session.removeAttribute("name");
        session.removeAttribute("surname");
        session.removeAttribute("place");
        session.removeAttribute("prov");
        
        risposta = "Utente " + name + " " + surname + " registrato con successo!";
    }else{
        risposta = "Valori immessi errati!";
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
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%>
            </nav>
                <%@include file="status.jspf"%>
            <article>
                <div class="risposta">
                    <%=risposta%>
                </div>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
    </body>
</html>
