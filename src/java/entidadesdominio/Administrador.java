/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.RegistroRepositorio;

/**
 *
 * @author Usuario
 */
public class Administrador extends Usuario implements User{

    public Administrador(String nombre, String apellido, String telefono, String id, String correo, String contraseña, String tipoPersona) {
        super(nombre, apellido, telefono, id, correo, contraseña, tipoPersona);
    }

    public Administrador() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String registrar() {
        RegistroRepositorio registro = new RegistroRepositorio();
        
        try {
            registro.agregarAdminastrador(this);
            return "Registro exitoso del trabajador.";
        } catch (Exception ex) {
            return "Registro invalido del trabajador.";
        }
    }
}
