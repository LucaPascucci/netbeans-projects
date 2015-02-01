<%-- 
    Document   : registrazione
    Created on : 27-gen-2015, 10.23.01
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
        <link href="style.css" rel="stylesheet" text="text/css">
        <script src="checkform.js" type="text/javascript"></script>
    </head>
    <body>
       <div id="container">
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%> 
            </nav>
            <article>
                <form method="post" action="checkreg.jsp" id="registration_form">
                    <p>Nome: <input type="text" name="nome" id="name" autofocus="autofocus"/></p>
                    <p>Cognome: <input type="text" name="cognome" id="surname"/></p>
                    <p>E-Mail: <input type="text" name="mail" id="mail"/></p>
                    <p>Username: <input type="text" name="username" id="username"/></p>
                    <p>Password: <input type="password" name="password" id="password"/></p>
                    <p><input type="submit" value="Invia"></p>
                </form>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
