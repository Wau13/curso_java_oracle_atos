/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modpruebas;

import java.util.ArrayList;
import modelo.Usuario;
import modelo.logica.ServicioUsuarios;

/**
 *
 * @author USUARIO
 */
public class Main {
    
    static void mostrarResultado(ServicioUsuarios.Resultado res, String nombre){
        System.out.print(" - Prueba " + nombre + ":");    
        switch(res){
            case CamposMal:
                System.out.println("campos mal");
                break;
            case ErrorDB:
                System.out.println("error db");
                break;
            case NoLogin:
                System.out.println("no login");
                break;
            case Ok:
                System.out.println("ok");
                break;


                
        }
    }
    
    static void listar() {
        ArrayList<Usuario> todos = ServicioUsuarios.getInstancia().obtenerTodos();
        System.out.println("Todos los registros:");
        
        
        todos.stream().forEach((u) -> {
        
            System.out.println("   -" + u.getId() 
                    + "," + u.getNombre() 
                    + "," + u.getEdad() 
                    + "," + u.getEmail() 
                    + "," + u.getPassword());
        });
    }
                
            

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("Probando modulo modelo");
        System.out.println("Datos no validos");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("", "22", "aa@aa.aaa", "aa"),
        "Usuario no valido");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("aa aa", "22", "",""),
        "Usuario no valido");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("aa aa", "22", "aa@aa",""),
        "Usuario no valido");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("aa aa", "22", "aa@aa.aa",""),
        "Usuario no valido");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("aa aa", "10", "",""),
        "Usuario no valido");
        
        System.out.println("Datos  validos");

        mostrarResultado(
                ServicioUsuarios.getInstancia().add("aa aa", "22", "aa@aa.aa","aa"),
        "Usuario  valido");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("bb bb", "33", "bb@bb.bb","bb"),
        "Usuario  valido");
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("cc cc", "44", "cc@cc.cc","cc"),
        "Usuario  valido");
        
        
        mostrarResultado(
                ServicioUsuarios.getInstancia().add("cc cc", "44", "cc@cc.cc","cc"),
        "Usuario  repetido");
        
       
        listar();
        
        Usuario usu = ServicioUsuarios.getInstancia().obtenerUno("cc@cc.cc");
        
        mostrarResultado(
                ServicioUsuarios.getInstancia().modificar(usu.getId() ,"dd dd", "55", "dd@dd.dd","dd"),
        "Usuario  modificado"); 
        
        mostrarResultado(
                ServicioUsuarios.getInstancia().validarLoginUsuario("bb@bb.bb", "aa"),
        "Usuario  MAL validarLoginUsuario");
        
        
        mostrarResultado(
                ServicioUsuarios.getInstancia().validarLoginUsuario("bb@bb.bb", "bb"),
        "Usuario  validarLoginUsuario");
        
                listar();

        
        mostrarResultado(
                ServicioUsuarios.getInstancia().eliminar("bb@bb.bb"),
        "Usuario  eliminar");
        
        mostrarResultado(
                ServicioUsuarios.getInstancia().eliminar("aa@aa.aa"),
        "Usuario  eliminar");
        
        mostrarResultado(
                ServicioUsuarios.getInstancia().eliminar("dd@dd.dd"),
        "Usuario  eliminar");
        
        listar();
        

    }
    
}
