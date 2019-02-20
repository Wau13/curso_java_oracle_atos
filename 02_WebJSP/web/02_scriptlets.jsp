<%-- 
    Document   : 02_scriptlets
    Created on : 19-feb-2019, 16:59:59
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriplets JSP</title>
    <body style="background-color:  grey;">
        <%@include file="cabecera.jsp" %>
        <h1>Scriplets JSP</h1>
        <% 
            int numero = 7, factorial = 1;
            for (int i = numero; i > 1 ; i--){
                factorial *= i;
            }
        %>
        <%-- Monstrar en negrita el numero del resultado --%>
        <p style="font-size: 20px; color: blue;">
            El factorial de <span style="font-weight: bold;">
                <%= numero %>
            </span> 
            <%= " es <span style=\"font-weight: bold;\">" + factorial + "</span>" %>
        </p>
    </body>
</html>
