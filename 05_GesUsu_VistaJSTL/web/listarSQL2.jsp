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
        <sql:setDataSource var = "snapshot" driver = "oracle.jdbc.driver.OracleDriver"
         url = "jdbc:oracle:thin:@localhost:1521:XE"
         user = "system"  password = "oracle"/>
        
        
        
       
        
        <%@include file="header.jsp" %>
        <h1>Todos los usuarios con SQL</h1>
        <div border="4">
            
        <form action="" method="get">
            Introduzca una nota del 0 al 10:<input id="notas" name="notas" type="number"/>
            <input type="submit" value="Filtrar"/>
            <br/>
            <br/>
            Apareceran las notas mayores al numero seleccionado.
        </form>
            <br/>
            <c:choose>
                <c:when test="${empty param.notas}">
                    No hay minimo
                    <sql:query dataSource = "${snapshot}" var = "result" >
                        SELECT nombre, nota from usuario 
                     </sql:query>
                </c:when>
                     <c:otherwise>
                         Nota minima: ${param.notas}
                            <sql:query dataSource = "${snapshot}" var = "result" >
                                SELECT nombre, nota from usuario WHERE nota > ${param.notas}
                            </sql:query>
                         
                     </c:otherwise>        
            </c:choose>
            
       
            
         
            <c:forEach items="${result.rows}" var="row">
                <form action="usuarios.do" method="post" name="form_${row.id}">                 
                    <input id="id" name="id" type="text"  size="4" readonly="true" value="${row.id}"/>
                    <input id="nombre" name="nombre" type="text" required="true" value="${row.nombre}"/>
                    <input type="nota" name="nota" type="number" required="true" value="${row.nota}"/>
                    
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