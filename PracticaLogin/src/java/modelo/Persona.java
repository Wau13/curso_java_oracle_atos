/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;

/**
 *
 * @author USUARIO
 */
public class Persona implements Serializable{
    
    private String nombre;
    private String email;
    private String pass;
    private String edad;

    public Persona(String nombre, String email, String pass, String edad) {
        this.nombre = nombre;
        this.email = email;
        this.pass = pass;
        this.edad = edad;
    }
    public Persona(String email){
        this.email = email;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String contraseña) {
        this.pass = contraseña;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }
    
    
            
    
}
