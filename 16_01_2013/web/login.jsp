<%-- 
    Document   : login
    Created on : 22-gen-2015, 11.39.14
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="style.css" type="text/css"></link>
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
                <form method="post" action="checklog.jsp" id="login_form">
                    <div>
                        Username:<input type="text" name="username" id="username"/>
                    </div>
                    <div>
                        Password:<input type="password" name="password" id="password"/>
                    </div>
                    <div>
                        <input type="submit" value="Invia"/>
                    </div>
                </form>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
