<%-- 
    Document   : index
    Created on : 18-nov-2014, 14.09.00
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
                        boolean flag;
                        String username = (String) application.getAttribute("user");
                        String password = (String) application.getAttribute("pass");
                        String nome = (String) application.getAttribute("nome");
                        String cognome = (String) application.getAttribute("cognome");
                        if (flag = (username != null && password != null && username.equals(request.getParameter("username")) && password.equals(request.getParameter("password")))) {
                            session.setAttribute("nome", nome);
                            session.setAttribute("cognome", cognome);%>
                            <jsp:forward page="ok.jsp"/>
                        <%}else{%>
                            <jsp:forward page="ko.jsp"/>
                        <%}%>


