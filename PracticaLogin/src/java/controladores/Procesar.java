/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Persona;
import modelo.logica.GestionPersona;
import modelo.persistencia.JavaJDPersona;
import org.apache.derby.shared.common.error.ExceptionSeverity;

/**
 *
 * @author USUARIO
 */
public class Procesar extends HttpServlet {
    JavaJDPersona jd = new JavaJDPersona();
    
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
        
        Persona persona = GestionPersona.getInstancia().getPersona() ;
        
        String compem = persona.getEmail();
        String compas = persona.getPass();
        
        if (email.equals(compem) && pass.equals(compas)){
                 
                request.getRequestDispatcher("pagina.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("errorcampos.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doDelete (HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        
        String email = request.getParameter("email");
        
        Persona persona = jd.borrarPersona(email);
        
        if(persona != null){
            
        }else{
            
        }
        
        
        
        
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
