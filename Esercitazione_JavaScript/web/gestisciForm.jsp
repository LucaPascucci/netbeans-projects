<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestisci Form</title>
    </head>
    <body>
        <h1>Contenuto Form</h1>
        <p>
            Il nome &egrave; <%= request.getParameter("nome")%> 
        </p>
        <p>
            Il cognome &egrave; <%= request.getParameter("cognome")%>
        </p>
        <p>
            Il telefono internazionale &egrave; <%= request.getParameter("tel")%>
        </p>
    </body>
</html>
