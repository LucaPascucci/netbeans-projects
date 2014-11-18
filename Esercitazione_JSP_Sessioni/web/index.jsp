<%-- 
    Document   : index
    Created on : 11-nov-2014, 14.15.53
    Author     : Luca
--%>
<%@page  import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1>
                Intestazione sito
            </h1>
            <p>
                La data &egrave;: <%= new Date()%>
            </p>
            <div>
                <% String nomeSessione = (String)session.getAttribute("nome");
                String cognomeSessione = (String)session.getAttribute("cognome");
                if ( nomeSessione != null && cognomeSessione != null){%>
                    
                <p>
                    Sei loggato come <%= nomeSessione %> <%= cognomeSessione%>
                </p>
                
                <%}else{%>
                <p>
                    Nessun utente loggato!!
                </p>
                <%}%>
            </div>
        </header>
            <nav>
                <% if (nomeSessione == null){ %>
                <a href="login.html">Login</a>
                <%} else { %>
                <a href="logout.jsp">Logout</a>
                <%}%>
                <a href="registrazione.html">Registrazione</a>
            </nav>
    </body>
</html>
