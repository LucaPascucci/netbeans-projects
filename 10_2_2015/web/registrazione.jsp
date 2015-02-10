<%-- 
    Document   : registrazione
    Created on : 10-feb-2015, 19.26.13
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TW-COMMERCE</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="checkForm.js" type="text/javascript"></script>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <article>
            <form method="post" action="checkreg.jsp" id="reg_form">
                <div>
                    Username: <input type="text" placeholder="username" name="username" id="username"/>
                </div>
                <div>
                    Password: <input type="password" placeholder="password" name="password" id="password"/>
                </div>
                <div>
                    Nome: <input type="text" placeholder="nome" name="name" id="name"/>
                </div>
                <div>
                    Cognome: <input type="text" placeholder="cognome" name="surname" id="surname"/>
                </div>
                <div>
                    <input id="submitbutton" type="submit" value="registrazione"/>
                </div>
            </form>
        </article>
        <footer>
                <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
