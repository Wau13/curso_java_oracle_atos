<%-- 
    Document   : exito
    Created on : 21-feb-2019, 10:07:24
    Author     : USUARIO
--%>
<%@page import="modelo.logica.GestionPersona"%>
<%@page import="modelo.Persona"%>
<%
    // Persona p1 = (Persona) session.getAttribute("persona1");
    Persona p1 = GestionPersona.getInstancia().getPersona();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo MVC</title>
    </head>
    <body>
        <h1>Datos recibidos, ou yeah!</h1>
        <h2>Nombre: <%= p1.getNombre() %> </h2>
        <h2>Email: <%= p1.getEmail() %></h2>
        <h2>Contraseña: <%= p1.getPass() %></h2>
        <h2>Edad:  <%= p1.getEdad() %></h2>
    </body>
</html>
