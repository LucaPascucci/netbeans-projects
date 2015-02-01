<%-- 
    Document   : registration
    Created on : 29-gen-2015, 10.35.37
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registratione</title>
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
                <form method="post" action="checkreg.jsp">
                    <div>
                        Nome:<input type="text" placeholder="nome" name="nome"/>
                    </div>
                    <div>
                        Cognome:<input type="text" placeholder="cognome" name="cognome"/>
                    </div>
                    <div>
                        Data di Nascita:<input type="text" placeholder="data" name="nascita"/>
                    </div>
                    <div>
                        Username:<input type="text" placeholder="username" name="username"/>
                    </div>
                    <div>
                        Password:<input type="password" placeholder="username" name="password"/>
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
