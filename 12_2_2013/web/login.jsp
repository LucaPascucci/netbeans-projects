<%-- 
    Document   : login
    Created on : 27-gen-2015, 10.22.51
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link href="style.css" rel="stylesheet" text="text/css"/>
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
                <form method="post" action="checklog.jsp" id="login_form">
                    <p>Username: <input type="text" name="username" id="username"/></p>
                    <p>Password: <input type="password" name="password" id="password"/></p>
                    <p><input type="submit" value="Login"></p>
                </form>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
