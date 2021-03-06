/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.LoginRepositorio;
import Repositorios.RegistroRepositorio;
import java.sql.SQLException;

/**
 *
 * @author julianbautista87
 */
public class Usuario {

    String nombre;
    String apellido;
    String telefono;
    String id;
    String correo;
    String contraseña;
    String tipoPersona;

    public Usuario() {
    }

    
    public Usuario(String nombre, String apellido, String telefono, String id, String correo, String contraseña, String tipoPersona) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.id = id;
        this.correo = correo;
        this.contraseña = contraseña;
        this.tipoPersona = tipoPersona;
    }

    public Usuario(String correo, String contraseña) {
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

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public String getTipoPersona() {
        return tipoPersona;
    }

    public void setTipoPersona(String tipoPersona) {
        this.tipoPersona = tipoPersona;
    }

    public Usuario iniciarSesion() throws SQLException {
        LoginRepositorio loginRepositorio= new LoginRepositorio();
        Usuario usr=loginRepositorio.iniciarSesion(this);
        return usr;
    }
}