/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.logica.GestionPersona;

/**
 *
 * @author USUARIO
 */
public class Procesar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String nombre = request.getParameter("nombre");
         String email = request.getParameter("email");
         String pass = request.getParameter("pass");
        String edad = request.getParameter("edad");
        
        GestionPersona.TipoResultado resultado;
        resultado = GestionPersona.getInstancia().guardarPersona(nombre, email, pass, edad);
        switch (resultado) {
            case OK:
                request.getSession().setAttribute("persona1", 
                        GestionPersona.getInstancia().getPersona());
                request.getRequestDispatcher("exito.jsp").forward(request, response);
                break;
            case SIN_VALORES:
                request.getRequestDispatcher("errorcampos.jsp").forward(request, response);
                break;
            case EDAD_MAL:
                request.getRequestDispatcher("errornumero.jsp").forward(request, response);
                break;
            case ERR_IO:
                request.getRequestDispatcher("errorio.jsp").forward(request, response);
                break;
            case EMAIL_MAL:
                request.getRequestDispatcher("erroremail.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        
        

    }
    
    
        
    


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
