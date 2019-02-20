<%--
    Document   : 04_req_ses
    Created on : 20-feb-2019, 9:26:20
    Author     : AdrianFernandez
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de peticiones y respuestas</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    </head>
    <body class="container">
        <%@include file="cabecera.jsp" %>
        <h1>Gestion de peticiones y respuestas</h1>
        <% 
            String nomApell = request.getParameter("nombre_apell");
            String desc = request.getParameter("descripcion");
            String email = request.getParameter("email");
            if (nomApell == null || desc == null || email == null) { %>
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <script>
                    function preguntarSiEnviar(){
                        if (document.getElementById("nombre_apell").value != "" && document.getElementById("nombre_apell").value.length > 1 ){
                            //cuando el nombre es correcto
                        let siQuiereEnviar = window.confirm("¿Seguro que quiere enviar?");
                        return siQuiereEviar; 
                    } else {
                        alert ("nombre debe ser mayor de un caracter");
                        return false;
                    }
                        
                    }
                </script>
            <form action="04_req_ses.jsp" method="get" class="form-inline" onsubmit="return preguntarSiEnviar()" >
            <p>Nombre y apellidos: </p>
            <p><input id="nombre_apell" type="text" name="nombre_apell"  autocomplete="true" size="100" maxlength="100" 
                      required="true" placeholder="Introduzca nombre y apellido" class="form-control"/></p>
            <p>Descripcion: </p>
            <p><textarea id="descripcion" name="descripcion" required="true" cols="100" rows="10" placeholder="Introduzca una descripcion detallada" class="form-control"></textarea></p>
            <p>E-mail: </p>
            <p><input id="email" type="text" name="email"  autocomplete="true" size="100" maxlength="100" 
                      required="true" placeholder="Introduzca su e-mail" class="form-control"/></p>
            <p><input type="submit" value="Enviar" class="btn btn-default"/></p>
        </form>
            </div>
            <div class="col-lg-2"></div>
        
        <%    
            } else { //Cuando ningun parametro en null
                if(nomApell != "" && desc != "" && email != "") {
                    if(nomApell.length() > 1){
                        if (desc.length() > 5){
                    //validacion del email
                            if (email.matches("^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,4})$")){
                                try{
                FileWriter fileWriter = new FileWriter("C:/Users/USUARIO/Desktop/solicitudes.txt");
                PrintWriter printWriter = new PrintWriter(fileWriter);
                printWriter.printf("Nombre='%s'\r\nDescripcion='%s'\r\nE-mail='%s'\r\n", nomApell, desc ,email);
                printWriter.close();
                } catch(IOException e){
                    %> <h2 style="color: red">Fallo en fichero! </h2><%
                }
                            }
                            else {
                                out.println("<h3>E-mail no valido</h3>");
                            }
                } else {
                    out.println("<h3>Pon una descripcion so' vago</h3>");
                }
                      } else {
                        %> <h3>¿Que pasa, no tienes nombre?</h3> <%
                         
                
                
            }
            }
            }
        %>
        
        <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>
