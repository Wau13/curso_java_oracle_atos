
package com.webservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HolaServlet extends HttpServlet {
    protected void procesarPeticion(HttpServletRequest peticion, HttpServletResponse respuesta) throws ServletException, IOException {
        respuesta.setContentType("text/html;charset=UTF-8");
        try (PrintWriter salida = respuesta.getWriter()) {
            salida.println("<html>");
            salida.println("<head>");
            salida.println("<title>Web Servlet Java</title>");
            salida.println("</head>");
            salida.println("<body>");
            salida.println("<h1>Nuestro primer servlet</h1>");
            salida.println("<h2>Ruta de servlet: " + peticion.getContextPath() + "</h2>");
            salida.println("<ul>");
            for (int i = 0; i < 10; i++){
                salida.println("<li>Numero " + i + "</li>");
            }
            salida.println("</ul>");
            salida.println("</body>");
            salida.println("</html>");
            
            
        }
        
    }
    
    @Override
    protected void doGet (HttpServletRequest peticion, HttpServletResponse respuesta) throws ServletException, IOException {
        procesarPeticion(peticion, respuesta);
    } 
    
    @Override
    protected void doPost (HttpServletRequest peticion, HttpServletResponse respuesta) throws ServletException, IOException {
        procesarPeticion(peticion, respuesta);
    } 
    
}
