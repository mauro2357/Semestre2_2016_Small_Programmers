/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.RegistroRepositorio;

/**
 *
 * @author julianbautista87
 */
public class Usuario {
    String nombre;
    String apellido;
    int telefono;
    int id;
    String correo;
    String contraseña;

    public Usuario(String nombre, String apellido, int telefono, int id, String correo, String contraseña) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.id = id;
        this.correo = correo;
        this.contraseña = contraseña;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public int getTelefono() {
        return telefono;
    }
    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getContraseña() {
        return contraseña;
    }
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    public String Registrar()
    {
        RegistroRepositorio registro=new RegistroRepositorio();
            try {
                registro.agregar(this);
                return "Registro exitoso.";
            } catch (Exception ex) {
                return "Registro invalido.";
            }
    }
    
}