/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservlet;

import java.util.ArrayList;

/**
 *
 * @author USUARIO
 */
public class Almacen {
    
    private static Almacen instancia;
    
    private final ArrayList<Usuario> usuarios ;
    
    private Almacen() {
        this.usuarios = new ArrayList<Usuario>();
        
    }
            
    
    public static Almacen getInstance() {
        if (instancia == null) instancia = new Almacen();
        return instancia;
        }
    
    public boolean addUser(String nom, String mail, String con) {
        Usuario nuevoUsu = new Usuario(nom,mail,con);
        this.usuarios.add(nuevoUsu);
        return true;
    }
    
    public boolean validacionPasswd(String mail, String con) {
        for(Usuario usuario : usuarios) {
            if(usuario.getMail().equals(mail) && usuario.getContraseña().equals(con)){
                return true;
            }
        }
        return false;
    }
    
    
    
    
    
}

