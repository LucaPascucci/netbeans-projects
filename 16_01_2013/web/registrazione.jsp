<%-- 
    Document   : registrazione
    Created on : 22-gen-2015, 11.39.26
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <script src="checkForm.js" type="text/javascript"></script>
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
                    <div>
                        Nome:<input type="text" name="name" id="name"/>
                    </div>
                    <div>
                        Cognome:<input type="text" name="surname" id="surname"/>
                    </div>
                    <div>
                        E-mail:<input type="text" name="mail" id="mail"/>
                    </div>
                    <div>
                        Username:<input type="text" name="username" id="username"/>
                    </div>
                    <div>
                        Password:<input type="password" name="password" id="password"/>
                    </div>
                    <div>
                        <input type="submit" value="salva"/>
                    </div>
                </form>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
