<%-- 
    Document   : borrar
    Created on : 25-feb-2019, 12:54:52
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Borrar usuarios</h1>
        <h3>Introduzca el email del usuario que desea borrar:</h3>
            <form action="procesar.do" method="delete">
            
            email: <input id="email" type="text" name="email" value=""/><br/>
            
            
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
