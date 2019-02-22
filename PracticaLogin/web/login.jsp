<%-- 
    Document   : login
    Created on : 22-feb-2019, 12:08:39
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h4>Accede a mi pagina</h4>
        <form action="procesar.do" method="get">
            
            email: <input id="email" type="text" name="email" value=""/><br/>
            contraseña: <input id="pass" name="pass" type="text" value=""/><br/>
            
            <input type="submit" value="Enviar"/>
        </form>
        
    </body>
</html>
