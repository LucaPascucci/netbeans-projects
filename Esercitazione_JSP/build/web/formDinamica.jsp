<!DOCTYPE html>
<html>
    <head>
        <title>Form Dinamica</title>
    </head>
    <body>
        <h1>Inserisci i valori da sommare</h1>
        <form method="post" action="gestisciFormDinamica.jsp">
<%  for(int i = 0; i < 10; i++) {  %>
        Field<%=i%>: <input type="number" name="Field<%=i%>" value="0"><br>
<%  } %>
    <input type="submit" value="invia"></form>
    </body>
</html>