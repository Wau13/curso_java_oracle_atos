<%-- 
    Document   : index
    Created on : 21-feb-2019, 20:42:40
    Author     : IEUser
--%>
<%@include file="head.jsp" %>
<%--! ArrayList<Usuario> todosUsuarios; --%>
<%-- todosUsuarios = ServicioUsuarios.getInstancia().obtenerTodos(); --%>

<html>
        <%= head() %>

    <body>
        <sql:setDataSource var = "snapshot" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/login"
         user = "usuario"  password = "usuario"/>
        
        <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from usuario
        </sql:query>
        
        <%@include file="header.jsp" %>
        <h1>Todos los usuarios con SQL</h1>
        <div border="4">
            <c:forEach items="${result.rows}" var="row">
                <form action="usuarios.do" method="post" name="form_${row.id}">                 
                    <input id="id" name="id" type="text"  size="4" readonly="true" value="${row.id}"/>
                    <input id="nombre" name="nombre" type="text" required="true" value="${row.nombre}"/>
                    <input id="edad" name="edad" type="number" required="true"  size="4" value="${row.edad}"/>
                    <input id="email" name="email" type="email" required="true" value="${row.email}"/>
                    <input id="password" name="password" type="password" required="true" value="${row.password}"/>
                    <input class="method" id="method" name="method" type="text" size="4" readonly="true" value="PUT"/>
                    
                    <input type="submit" value="EDIT" 
                           onclick="Array.from(document.getElementsByClassName('method')).forEach((thisInput) => { thisInput.value='PUT'; })"/>
                    <input type="submit" value="ELIM"                           
                           onclick="Array.from(document.getElementsByClassName('method')).forEach((thisInput) => { thisInput.value='DELETE'; })"/><br/>
                </form>
            </c:forEach>
        </div>
    </body>
</html>