<%-- 
    Document   : login
    Created on : 3-feb-2015, 15.51.14
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="style.css" type="text/css" rel="stylesheet"/>
        <script src="checkForm.js" type="text/javascript"></script>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <form action="checklog.jsp" method="POST" id="login_form">
                <div>
                    Username:<input type="text" placeholder="username" name="username" id="username"/>
                </div>
                <div>
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
