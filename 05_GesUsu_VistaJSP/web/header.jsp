<%-- 
    Document   : header
    Created on : 21-feb-2019, 20:43:31
    Author     : IEUser
--%>

<h2>Aplicaci�n Gesti�n MVC JSP</h2>
<nav>
    <a href="index.jsp">Inicio</a>
        <a href="listar.jsp">Listar</a>   
        <a href="eliminar.jsp">Eliminar</a>
        <form action="usuarios.do" style="display: inline-block">
            <input id="email" name="email" type="hidden" value="LOGOUT"/>
            <input TYPE="submit" value="Salir"/>
        </form>
        <a href="login.jsp">Login</a>
        <a href="registrarse.jsp">Registrarse</a>
 </nav>
