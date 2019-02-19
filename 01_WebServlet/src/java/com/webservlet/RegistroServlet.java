/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USUARIO
 */
public class RegistroServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Formulario Registro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Introduce tus datos</h1>");
            out.println("<form name='form1' method='post' action='http://localhost:8084/01WebServlet/registro'>");
            out.println("<table border='1'>");
            out.println("<tr><td>Nombre: </td><td><input type='text' name='nom' id='nom' size='25' value=''/> </td></tr> ");
            out.println("<tr><td>E-mail: </td><td><input type='mail' name='mail' id='mail' size='25' value=''/> </td></tr> ");
            out.println("<tr><td>Contraseña: </td><td><input type='text' name='con' id='con' size='25' value=''/> </td></tr> ");
            out.println("<tr><td>Edad:</td><td><input type='number' name='eda' id='eda' size='25' value=''/> </td></tr> ");
            out.println("</table>");
            out.println("<input type='submit' value='Enviar'/>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String edad = request.getParameter("eda");
            
            if (Integer.parseInt(edad) > 18){
                
                 
                String nombre = request.getParameter("nom");
                String contraseña = request.getParameter("con");
                String mail = request.getParameter("mail");
                
                
                Almacen.getInstance().addUser (nombre, contraseña, mail);
                
                
                
               
                out.println("Te has registrado.");
                out.println("<h3><a href='index.html'>volver</a></h3>");
                
                
            } else {
                out.println("No puedes registrarte");
                out.println("<h3><a href='index.html'>volver</a></h3>");

                
                   }

        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
