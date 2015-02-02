<%-- 
    Document   : login
    Created on : 2-feb-2015, 9.53.34
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="checkForm.js" type="text/javascript"></script>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <form method="post" id="login_form" action="checklog.jsp">
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
        <footer>
            <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
