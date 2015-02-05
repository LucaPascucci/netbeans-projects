<%-- 
    Document   : registrazione
    Created on : 5-feb-2015, 9.53.48
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="checkForm.js" type="text/javascript"/></script>
    </head>
    <body>
        <div id="main">
            <header>
                <%@include file="header.jspf" %>
            </header>
            <div id="content">
                <form method="POST" action="checkreg.jsp" id="reg_form">
                    <div>
                        Username:<input type="text" placeholder="username" name="username" id="username"/>
                    </div>
                    <div>
                        Password:<input type="password" placeholder="password" name="password" id="password"/>
                    </div>
                    <div>
                        Nome:<input type="text" placeholder="nome" name="name" id="name"/>
                    </div>
                    <div>
                        Cognome:<input type="text" placeholder="cognome" name="surname" id="surname"/>
                    </div>
                    <fieldset>
                        <legend>Modalità di pagamento:</legend>
                        <div>
                            Bonifico<input type="radio" name="pagamento" checked="checked" value="bonifico" id="bonifico"/>
                        </div>
                        <div>
                            Contrassegno<input type="radio" name="pagamento" value="contrassegno" id="contrassegno"/>
                        </div>
                    </fieldset>
                    <div>
                        <input type="submit" value="registrazione"/>
                    </div>
                </form>
            </div>
            <footer>
                <%@include file="footer.jspf" %>
            </footer>
        </div>
    </body>
</html>
