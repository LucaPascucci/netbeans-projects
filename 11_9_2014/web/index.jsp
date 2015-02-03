<%-- 
    Document   : index
    Created on : 3-feb-2015, 15.48.35
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="style.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <header>
            <%@include file="header.jspf" %>
        </header>
        <div id="container">
            <aside>
                <p class="font20 georgia titoloaside">TITOLO</p>
                <p class="giustificato">Ut auctor, ante quis fringilla interdum, arcu sapien vestibulum diam, quis auctor lorem felis vel sapien. 
                    Vivamus ac felis libero. Nam elementum, sem non ornare hendrerit, elit ligula elementum dolor, et 
                    ullamcorper purus tellus nec neque. Nam feugiat non leo in eleifend. Nunc porta sit amet nisl in 			sollicitudin. Sed interdum, sem nec laoreet porttitor, risus ipsum eleifend metus, id sollicitudin risus 
                    metus quis magna. Etiam sem lacus, viverra quis ipsum quis, mattis scelerisque ligula. Maecenas ornare
                    rutrum diam sit amet laoreet. Cras eget lectus quis ante vehicula rutrum. In auctor turpis nec pharetra
                    scelerisque. Cras accumsan tellus vel sapien dictum, eu hendrerit turpis molestie.
                </p>
            </aside>
            <section>
                <article>
                    <p class="font16 georgia titolosection">TITOLO</p>
                    <img src="news.jpg" alt="news"/>
                    <p class="giustificato testosection">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in adipiscing magna. 
                        Ut vitae euismod sapien, ac accumsan lectus. Aliquam vel elit molestie, congue odio sed, gravida elit. 
                        Ut consequat tortor eu tortor tristique, bibendum suscipit est aliquet. Mauris iaculis nulla arcu, 
                        id auctor nisl facilisis eu.</p>
                    <p class="autore"><span class="bold">Autore:</span> Mario Rossi</p>
                    <% if (session.getAttribute("login") != null){
                            String valoreBottoneRossi;
                            if ("lettore5".equals(application.getAttribute("rossi"))){
                                valoreBottoneRossi = "Non mi piace più";
                            }else{
                                valoreBottoneRossi = "Mi piace";
                            }
                    %>
                    <a class = "bold bottone" href="mipiace.jsp?autore=rossi"><button><%=valoreBottoneRossi%></button></a>
                    <%}%>
                </article>
                <article>
                    <p class="font16 georgia titolosection">TITOLO</p>
                    <img src="news.jpg" alt="news"/>
                    <p class="giustificato testosection">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in adipiscing magna. 
                        Ut vitae euismod sapien, ac accumsan lectus. Aliquam vel elit molestie, congue odio sed, gravida elit. 
                        Ut consequat tortor eu tortor tristique, bibendum suscipit est aliquet. Mauris iaculis nulla arcu, 
                        id auctor nisl facilisis eu.</p>
                    <p class="autore"><span class="bold">Autore:</span> Luca Bianchi</p>
                    <% if (session.getAttribute("login") != null){
                            String valoreBottoneBianchi;
                            if ("lettore5".equals(application.getAttribute("bianchi"))){
                                valoreBottoneBianchi = "Non mi piace più";
                            }else{
                                valoreBottoneBianchi = "Mi piace";
                            }
                    %>
                    <a class = "bold bottone" href="mipiace.jsp?autore=bianchi"><button><%=valoreBottoneBianchi%></button></a>
                    <%}%>
                </article>
            </section>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
