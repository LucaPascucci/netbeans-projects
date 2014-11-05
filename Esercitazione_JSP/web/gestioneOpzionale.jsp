<%-- 
    Document   : gestioneOpzionale
    Created on : 4-nov-2014, 15.38.33
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    final String valore = "TecWeb";
    String item = "";
    Boolean check = false;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Controllo esami...</h1>
        <p>
            <% String[] values = request.getParameterValues("esami");
                if (values != null && values.length != 0) {
                    item = "" + values.length;%>
            Esami selezionati: <%=item%></p><p>
            <%for (String item : values) {
                       if (valore.equals(item)) {
                           check = true;
                       }%> 
            <%=item%>

            <%}
                if (check) {%> 
        <h1>Hai superato l'esame di tecnologie web!!</h1>
        <%} else {%>
    </p><p>Non hai superato l'esame di tecnologie web</p><p>
        <%}
               } else {%>
        non hai selezionato esami!!
        <%}%>


    </p>
</body>
</html>
