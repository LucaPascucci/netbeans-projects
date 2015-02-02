<%-- 
    Document   : index
    Created on : 2-feb-2015, 9.44.26
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <aside>
            <p class="font16 georgia titoloaside bold">TITOLO</p>
            <p class="font12 paragrafoaside">Ut auctor, ante quis fringilla interdum, arcu sapien vestibulum diam, quis auctor lorem felis vel sapien. 
                Vivamus ac felis libero. Nam elementum, sem non ornare hendrerit, elit ligula elementum dolor, et ullamcorper purus tellus nec neque. 
                Nam feugiat non leo in eleifend. Nunc porta sit amet nisl in sollicitudin. 
                Sed interdum, sem nec laoreet porttitor, risus ipsum eleifend metus, id sollicitudin risus metus quis magna. 
                Etiam sem lacus, viverra quis ipsum quis, mattis scelerisque ligula. Maecenas ornare rutrum diam sit amet laoreet. 
                Cras eget lectus quis ante vehicula rutrum. In auctor turpis nec pharetra scelerisque. Cras accumsan tellus vel sapien dictum, 
                eu hendrerit turpis molestie.</p>
            <p class="font16 georgia titoloaside bold">TITOLO</p>
            <p class="font12 paragrafoaside">Ut auctor, ante quis fringilla interdum, arcu sapien vestibulum diam, quis auctor lorem felis vel sapien. 
                Vivamus ac felis libero. Nam elementum, sem non ornare hendrerit, elit ligula elementum dolor, et ullamcorper purus tellus nec neque. 
                Nam feugiat non leo in eleifend. Nunc porta sit amet nisl in sollicitudin. 
                Sed interdum, sem nec laoreet porttitor, risus ipsum eleifend metus, id sollicitudin risus metus quis magna. 
                Etiam sem lacus, viverra quis ipsum quis, mattis scelerisque ligula. Maecenas ornare rutrum diam sit amet laoreet. 
                Cras eget lectus quis ante vehicula rutrum. In auctor turpis nec pharetra scelerisque. Cras accumsan tellus vel sapien dictum, 
                eu hendrerit turpis molestie.</p>
        </aside>
        <section>
            <article>
                <p class="georgia font20 titoloarticle bold">TITOLO</p>
                <img src="news.jpg" alt="news"/>
                <p class="font12 paragrafoarticle">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in adipiscing magna. 
                    Ut vitae euismod sapien, ac accumsan lectus. Aliquam vel elit molestie, congue odio sed, gravida elit. 
                    Ut consequat tortor eu tortor tristique, bibendum suscipit est aliquet. Mauris iaculis nulla arcu, 
                    id auctor nisl facilisis eu. Suspendisse sodales volutpat pharetra. Donec sollicitudin consectetur felis quis pharetra. 
                    Maecenas rhoncus ipsum vitae rhoncus tempus. Curabitur consectetur sollicitudin ante, sed ultrices ante vulputate eu. 
                    Maecenas dictum malesuada mauris a pellentesque.
                </p>
                <p class="font12 autore">
                    <span class="bold">Autore:</span> Mario Rossi
                    <%
                         if (session.getAttribute("username") != null && "rossim".equals((String)session.getAttribute("username"))){
                     %><input type="submit" value="MODIFICA"/>
                     <%  }
                     %>
                </p>
            </article>
            <article>
                <p class="georgia font20 titoloarticle bold">TITOLO</p>
                <img src="news.jpg" alt="news"/>
                <p class="font12 paragrafoarticle">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in adipiscing magna. 
                    Ut vitae euismod sapien, ac accumsan lectus. Aliquam vel elit molestie, congue odio sed, gravida elit. 
                    Ut consequat tortor eu tortor tristique, bibendum suscipit est aliquet. Mauris iaculis nulla arcu, 
                    id auctor nisl facilisis eu. Suspendisse sodales volutpat pharetra. Donec sollicitudin consectetur felis quis pharetra. 
                    Maecenas rhoncus ipsum vitae rhoncus tempus. Curabitur consectetur sollicitudin ante, sed ultrices ante vulputate eu. 
                    Maecenas dictum malesuada mauris a pellentesque.</p>
                <p class="font12 autore">
                     <span class="bold">Autore:</span> Luca Bianchi
                     <%
                         if (session.getAttribute("username") != null && "bianchil".equals((String)session.getAttribute("username"))){
                     %><input type="submit" value="MODIFICA"/>
                     <%  }
                     %>
                </p>
            </article>
        </section>

        <footer>
            <%@include file="footer.jspf" %>
        </footer>
    </body>
</html>
