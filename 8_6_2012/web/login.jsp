<%-- 
    Document   : login
    Created on : 4-feb-2015, 9.52.35
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
        <div id="container">
            <div id="top">
                <%@include file="top.jspf" %>
            </div>
            <div id="navbar">
                <%@include file="navbar.jspf" %>
            </div>
            <div id="statusbar">
                <%@include file="statusbar.jspf" %>
            </div>
            <div id="content">
                <form method="POST" action="checklog.jsp" id="log_form">
                    <div>
                        Username:<input type="text" placeholder="username" name="username" id="username"/>
                    </div>
                    <div>
                        Password:<input type="password" placeholder="password" name="password" id="password"/>
                    </div>
                    <div>
                        <input type="submit" value="Login"/>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
