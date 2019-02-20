<%-- 
    Document   : proceso_registro
    Created on : 20-feb-2019, 17:50:26
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
            String nombre = request.getParameter("nom");
            String edad = request.getParameter("eda");
            String email = request.getParameter("email");
            String contraseña = request.getParameter("psswd");
            
            Cookie tePersigo = new Cookie("persiguiendote", request.getParameter(email));
%>             
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% out.println(nombre + edad + email + contraseña);%>
        
    </body>
</html>
