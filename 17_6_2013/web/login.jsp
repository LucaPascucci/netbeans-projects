<%-- 
    Document   : login
    Created on : 29-gen-2015, 10.35.27
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
            <article>
                <form method="post" action="checklog.jsp">
                    <div>
                        Username:<input type="text" placeholder="username" name="username"/>
                    </div>
                    <div>
                        Data di Nascita:<input type="password" placeholder="username" name="password"/>
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
