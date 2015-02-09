<%-- 
    Document   : rotating_logo
    Created on : 9-feb-2015, 14.43.44
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Animated Logo</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header id="menubar1">
            <%@include file="header.jspf" %>
        </header>
        
        <div id="center-wrap">
        <div id="logo-wrap">
            <img class="mask" src="skbcg_mask.png" alt="skbcg_mask" width="264" height="263" />
            <img class="stripe" src="skbcg_stripe.png" alt="skbcg_stripe" width="363" height="435" />
            <img class="color" src="skbcg_color.png" alt="skbcg_color" width="379" height="378" />
        </div>
    </div>
    </body>
</html>
