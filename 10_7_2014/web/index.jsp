<%-- 
    Document   : index
    Created on : 2-feb-2015, 15.33.28
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>

    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <aside>
                <p class="georgia font16 titoloAside bold">TITOLO</p>
                <p class="font12 articoloAside">Ut auctor, ante quis fringilla interdum, arcu sapien vestibulum diam, quis auctor lorem felis vel sapien. 
                    Vivamus ac felis libero. Nam elementum, sem non ornare hendrerit, elit ligula elementum dolor, et ullamcorper purus tellus nec neque. 
                    Nam feugiat non leo in eleifend. Nunc porta sit amet nisl in sollicitudin. 
                    Sed interdum, sem nec laoreet porttitor, risus ipsum eleifend metus, id sollicitudin risus metus quis magna. 
                    Etiam sem lacus, viverra quis ipsum quis, mattis scelerisque ligula. Maecenas ornare rutrum diam sit amet laoreet. 
                    Cras eget lectus quis ante vehicula rutrum. In auctor turpis nec pharetra scelerisque. Cras accumsan tellus vel sapien dictum, 
                    eu hendrerit turpis molestie.
                </p>
            </aside>
            <section>
                <article>
                    <p class="font20 georgia titoloArticle">TITOLO</p>
                    <p class="font12 voto"><span class="bold">Voto:</span> 
                        <%= application.getAttribute("rossi") != null? (Integer)application.getAttribute("rossi"): 0%>
                        <% if(session.getAttribute("login") != null){
                            
                        %>
                        <a href="voto.jsp?autore=rossi"><button type="button">Vota</button></a>
                        <%
                        }
                        %>
                    </p>
                    <img class="imgArticle" src="news.jpg" alt="news"/>
                    <p class="font12 paragrafoArticle">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in adipiscing magna. 
                        Ut vitae euismod sapien, ac accumsan lectus. Aliquam vel elit molestie, congue odio sed, gravida elit. 
                        Ut consequat tortor eu tortor tristique, bibendum suscipit est aliquet. Mauris iaculis nulla arcu, 
                        id auctor nisl facilisis eu.</p>
                    <p class="font12"><span class="bold">Autore:</span> Mario Rossi</p>
                </article>
                <article>
                    <p class="font20 georgia titoloArticle">TITOLO</p>
                    <p class="font12 voto"><span class="bold">Voto:</span> 
                        <%= application.getAttribute("bianchi") != null? (Integer)application.getAttribute("bianchi"): 0%>
                        <% if(session.getAttribute("login") != null){
                            
                        %>
                        <a href="voto.jsp?autore=bianchi"><button type="button">Vota</button></a>
                        <%
                        }
                        %>
                    </p>
                    <img class="imgArticle" src="news.jpg" alt="news"/>
                    <p class="font12 paragrafoArticle">	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in adipiscing magna. 
                        Ut vitae euismod sapien, ac accumsan lectus. Aliquam vel elit molestie, congue odio sed, gravida elit. 
                        Ut consequat tortor eu tortor tristique, bibendum suscipit est aliquet. Mauris iaculis nulla arcu, 
                        id auctor nisl facilisis eu.</p>
                    <p class="font12"><span class="bold">Autore:</span> Luca Bianchi</p>
                </article>
            </section>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
