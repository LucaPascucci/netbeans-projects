<%-- 
    Document   : login
    Created on : 2-feb-2015, 15.34.21
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <form method="POST" action="checklog.jsp">
                <div class="font12">
                    Username:<input type="text" placeholder="username" name="username" id="username"/>
                </div>
                <div class="font12">
                    Password:<input type="password" placeholder="password" name="password" id="password"/>
                </div>
                <div>
                    <input type="submit" value="login"/>
                </div>
            </form>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
