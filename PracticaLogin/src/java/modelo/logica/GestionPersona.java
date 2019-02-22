/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.logica;

import modelo.Persona;
import modelo.persistencia.JavaJDPersona;

/**
 *
 * @author USUARIO
 */
public class GestionPersona {
    private static GestionPersona instancia;
    private IPersonaDAO daoPersona = new JavaJDPersona(); //FicheroPersona.getInstancia();
    private GestionPersona() { }    
    public static GestionPersona getInstancia() {
        if (instancia == null) instancia = new GestionPersona();
        return instancia;
    }
    public enum TipoResultado {OK, SIN_VALORES, EDAD_MAL, ERR_IO, EMAIL_MAL};
    
    private boolean validarDatosPersona(String nombre, String email, String pass, String edad) {
        return      ! nombre.isEmpty() 
                &&  ! email.isEmpty() 
                && ! pass.isEmpty() 
                && ! edad.isEmpty();
    }
    private boolean validarEdad(String edad) {
       return edad.matches("^[1-9][0-9]*$");
    }
    
    private boolean validarEmail(String email) {
        return email.matches("^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$");
    }
    
    public TipoResultado guardarPersona(String nombre, String email, String pass, String edad) {
        if (validarDatosPersona(nombre, email, pass, edad)) {
            if (validarEdad(edad)) {
                if (validarEmail(email)){
                    if (daoPersona.guardarPersona(new Persona(nombre, email, pass, edad)))
                    return TipoResultado.OK;
                else
                    return TipoResultado.ERR_IO;
                } else {
                    return TipoResultado.EMAIL_MAL;
                }
            } else {
                return TipoResultado.EDAD_MAL;
            }
        } else {
            return TipoResultado.SIN_VALORES;
        }
    }
    public Persona getPersona() {
        return daoPersona.leerPersona();
    }
    
    
}
