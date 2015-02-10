<%-- 
    Document   : login
    Created on : 10-feb-2015, 19.06.02
    Author     : Luca
--%>

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
            <form method="post" action="checklog.jsp" id="log_form">
                <div>
                    Username: <input type="text" placeholder="username" name="username" id="username"/>
                </div>
                <div>
                    Password: <input type="password" placeholder="password" name="password" id="password"/>
                </div>
                <div>
                    <input id="submitbutton" type="submit" value="login"/>
                </div>
            </form>
        </article>
        <footer>
            <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
