<%!
Integer somma = 0;
final String valore_nullo = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestisci Form Dinamica</title>
    </head>
    <body>
        <h1>Somma valori...</h1>
        <ul>
            <%-- commento --%>
<% 
for(int i = 0; i < 10; i++) {
    String value = request.getParameter("Field"+i);
    if (!valore_nullo.equals(value)){
        //if 
        somma += Integer.parseInt(request.getParameter("Field"+i));
    }else{
        value = "0";
    }
    
%>
            <li>Field<%=i%> contiene: <%= value %></li>
<% } %>
            <h1>La somma &egrave;: <%= somma %> </h1>
        </ul>    
    </body>
</html>