<%-- 
    Document   : index
    Created on : 10-feb-2015, 19.02.53
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
            <section id="division">
                <img src="item-2.png" alt="item2"/>
                <a href="gestisci.jsp">stampante laser HP Desktop</a>
            </section>
            <section>
                <img src="item-1.png" alt="item1"/>
                <a href="gestisci.jsp">Monitor lcd Asus 22"</a>
            </section>
        </article>
        <footer>
                <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
