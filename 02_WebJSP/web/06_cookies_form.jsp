<%-- 
    Document   : 06_cookies_form
    Created on : 20-feb-2019, 16:19:47
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario cookies con JSP</title>
    </head>
    <body>
        <%@include file="cabecera.jsp" %>
        <%= dameTitulo("Formulario Cookies con jsp")%>
        
        <form action="06_cookies.jsp" method="get">
            Nombre: <input id="nombre" type="text" name="nombre"/> <br/>
            Apellidos: <input id="apellidos" type="text" name="apellidos"/> <br/>
            <input type="submit" value="enviar"/>
        </form>
    </body>
</html>
