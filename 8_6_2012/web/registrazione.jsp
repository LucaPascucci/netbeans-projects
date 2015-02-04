<%-- 
    Document   : registrazione
    Created on : 4-feb-2015, 9.51.59
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="checkForm.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="container">
            <div id="top">
                <%@include file="top.jspf" %>
            </div>
            <div id="navbar">
                <%@include file="navbar.jspf" %>
            </div>
            <div id="statusbar">
                <%@include file="statusbar.jspf" %>
            </div>
            <div id="content">
                <form method="POST" action="checkreg.jsp" id="reg_form">
                    <div>
                        Nome Maya:<input type="text" placeholder="nome Maya" name="nomemaya" id="nomemaya"/>
                    </div>
                    <fieldset>
                        <legend>Data di nascita</legend>
                        <div>
                            uinal:<input type="text" placeholder="uinal" name="uinal" id="uinal"/>
                        </div>
                        <div>
                            tun:<input type="text" placeholder="tun" name="tun" id="tun"/>
                        </div>
                        <div>
                            k'atun:<input type="text" placeholder="k'atun" name="katun" id="katun"/>
                        </div>
                        <div>
                            b'ak'tun:<input type="text" placeholder="b'ak'tun" name="baktun" id="baktun"/>
                        </div>
                    </fieldset>
                    <div>
                        Username:<input type="text" placeholder="username" name="username" id="username"/>
                    </div>
                    <div>
                        Password:<input type="password" placeholder="password" name="password" id="password"/>
                    </div>
                    <div>
                        <input type="submit" value="Registrati"/>
                    </div>
                </form>            
            </div>
        </div>
    </body>
</html>
