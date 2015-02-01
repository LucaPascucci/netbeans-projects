<%-- 
    Document   : registrazione
    Created on : 30-gen-2015, 15.44.05
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
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
                <form method="post" action="checkreg.jsp" id="registation_form">
                    <div>
                        Nome:<input type="text" placeholder="nome" name="name" id="name"/>
                    </div>
                    <div>
                        Cognome:<input type="text" placeholder="cognome" name="surname" id="surname"/>
                    </div>
                    <div>
                        Nato a:<input type="text" placeholder="nato a" name="place" id="place"/>
                    </div>
                    <div>
                        Provincia:<input type="text" placeholder="provincia" name="prov" id="prov"/>
                    </div>
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
