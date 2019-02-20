<%-- 
    Document   : 05_sesiones
    Created on : 20-feb-2019, 14:03:42
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de sesiones jsp</title>
    </head>
    <body>
        <%@include file="cabecera.jsp" %>
        <%! int totalPeticiones = 0; //variable "estatica" del servlet%>
        <h1>Gestion de sesiones jsp</h1>
        <h2>Calculo de un factorial</h2>
        <form action="05_sesiones.jsp" method="get">
            <p>N&uacute;mero: <input id="numero" name="numero" type="number"/> 
            <input type="submit" value="calcular"/>
            </p>
        </form>
        <%
            String numeroGet = request.getParameter("numero");
            if (numeroGet != null){
                int numero = 0;
            double factorial = 1;
            boolean error = false;
                
                try{
                    numero = Integer.valueOf(numeroGet);
                    if (numero < 1){
                        error = true;
                    } else { //Todo correcto calculamos el factorial
                        for (int i = numero; i > 1; i--){
                            factorial *= i;
                        }
                    }
                } catch (NumberFormatException e){
                    error = true;
                } 
                if (error) //Mal, tocamos la vista en la logica
                    out.println("<p style='color: red'>Indica un entero mayor que cero</p>");
                else
                    out.println("<p>Resultado: " + numero + "! = " + factorial + "</p>");
            }
            // if(session.isNew()){
            //    session.setMaxInactiveInterval(300);
            // }
            Integer contador = (Integer) session.getAttribute("contadorVisitas");
            if (contador != null){
                contador = Integer.valueOf(contador);
            } else {
                contador = 0 ;
            }
                if (contador != 0){
                    %> <p>Ejecuciones de JSP en esta sesion:  <%= contador %> </p> <%
                }
                contador++;
                session.setAttribute("contadorVisitas", contador);
                totalPeticiones++;
        %>
        <p>Ejecuciones totales del JSP:  <%= totalPeticiones %> </p> 
    </body>
</html>
