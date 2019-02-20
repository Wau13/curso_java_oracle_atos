<%-- 
    Document   : 01_expresiones
    Created on : 19-feb-2019, 16:46:18
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP expresiones</title>
    </head>
    <body>
        <%@include file="cabecera.jsp" %>
        <h1>Expresiones JSP</h1>
        <!-- Mostrar la fecha y la hora actual -->
        <%= new java.util.Date().toString() %> <br/>
        
        <%-- Convertir a mayusculas un String --%>
        <%= "texto en mayusculas".toUpperCase() %> <br/>
        
        <%-- Mostrar el resultado de una expresion aritmetica --%>
        <%= (5 + 3) / (float) 3 %> <br/>
        
        <%-- Generar un numero aleatorio entre 0 y 99--%>
        <%= new java.util.Random().nextInt(100) %> <br/>
        
        
    </body>
</html>
