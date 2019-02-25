<%-- 
    Document   : pagina
    Created on : 22-feb-2019, 14:37:07
    Author     : USUARIO
--%>

<%@page import="modelo.Persona"%>
<%@page import="modelo.logica.GestionPersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ya estas logueado</h1>
        <% Persona persona = GestionPersona.getInstancia().getPersona(); %>
        <h2>Has accedido como: 
        <%= persona.getEmail() %>
        </h2>
        <p>¿Quieres borrar tus datos?</p>
        <a href="borrar.jsp">Borrar</a>
        <p>¿O te has confundido en alguno?</p>
        <a href="">Actualizar</a>
    </body>
</html>
