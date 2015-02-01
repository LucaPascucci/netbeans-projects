<%-- 
    Document   : login
    Created on : 30-gen-2015, 15.43.44
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="container">
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%>
            </nav>
            <%@include file="status.jspf"%>
            <article>
                <form method="post" action="checklog.jsp" id="login_form">
                    <div>
                        Username:<input type="text" placeholder="username" name="username" id="username"/>
                    </div>
                    <div>
                        Password:<input type="password" placeholder="password" name="password" id="password"/>
                    </div>
                    <div>
                        <input type="submit" value ="Invia"/>
                    </div>
                </form>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
