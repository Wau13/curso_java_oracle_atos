<%-- 
    Document   : 03_ejer_scriptlets
    Created on : 19-feb-2019, 17:14:07
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP tabla del 7</title>
    </head>
    <body>
        <%
        for (int e = 1; e <= 10; e ++){
        %>
        <h1>Tabla del <%= e %> </h1>
        <%-- Muesta una tabla con su TRs y TDs de la tabla de multiplicar del 7 con jsp--%>
        <table style="border: 4px double blue; display: inline-block ">
            <% for (int i = 1; i <= 10; i++){ %>
            <tr>
                <td><%= e %> por</td>
                <td><%= i %></td>
                <td><%= e*i %></td>
            </tr>
            <% } } %>
            
            
        </table>
    </body>
</html>
