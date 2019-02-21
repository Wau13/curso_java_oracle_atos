<%-- 
    Document   : registro
    Created on : 21-feb-2019, 16:49:59
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h4>Rellena este formulario para ser un nuevo usuario:</h4>
        <form action="procesar.do" method="get">
            nombre: <input id="nombre" type="text" name="nombre" value=""/><br/>
            email: <input id="email" type="text" name="email" value=""/><br/>
            contraseña: <input id="contraseña" type="text" value=""/><br/>
            edad: <input id="edad" type="text" name="edad" value=""/><br/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
