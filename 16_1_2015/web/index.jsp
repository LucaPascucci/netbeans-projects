<%-- 
    Document   : index
    Created on : 5-feb-2015, 9.53.38
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
        <div id="main">
            <header>
                <%@include file="header.jspf" %>
            </header>
            <div id="content">
                <article>
                    <section>
                        <img src="item-1.png" alt="item1"/>
                        <p><a href="acquista.jsp">acquista</a></p>
                    </section>
                    <section>
                        <img src="item-2.png" alt="item2"/>
                        <p><a href="acquista.jsp">acquista</a></p>
                    </section>
                </article>
                <aside>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rutrum vel nisi et mollis. Pellentesque at finibus nulla, nec viverra nisi. Quisque faucibus augue sit amet nibh porttitor, eget gravida orci ultrices. Morbi gravida convallis cursus. Fusce lacus elit, porta vel convallis vitae, sodales eget enim. Praesent maximus, lacus lobortis aliquam laoreet, risus elit sollicitudin lorem, eget gravida velit velit a dolor. Maecenas eu blandit ante. Cras at consectetur velit. Integer sit amet feugiat arcu, vitae pharetra dui. Nam imperdiet vulputate luctus. Suspendisse convallis metus at pulvinar pellentesque. Donec at tellus ipsum. Nullam viverra ipsum in lorem luctus luctus.
                    </p>
                </aside>
            </div>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
