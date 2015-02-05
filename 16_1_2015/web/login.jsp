<%-- 
    Document   : login
    Created on : 5-feb-2015, 9.53.57
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="checkForm.js" type="text/javascript"/></script>
    </head>
    <body>
        <div id="main">
            <header>
                <%@include file="header.jspf" %>
            </header>
            <div id="content">
               <form method="POST" action="checklog.jsp" id="login_form">
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
            </div>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
