/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservlet;

/**
 *
 * @author USUARIO
 */
public class Usuario {
    
    String nombre;
    String mail;
    String contraseña;

    public Usuario(String nombre, String mail, String contraseña) {
        this.nombre = nombre;
        this.mail = mail;
        this.contraseña = contraseña;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
    

    
   
    
}
