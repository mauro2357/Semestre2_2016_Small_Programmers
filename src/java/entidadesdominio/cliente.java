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
public class cliente extends Usuario implements User {
    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    public cliente(String nombre, String apellido, String telefono, String id, String correo, String contraseña, String tipoPersona) {
        super(nombre, apellido, telefono, id, correo, contraseña, tipoPersona);
    }

    public cliente() {
    }

    @Override
    public String registrar() {
        RegistroRepositorio registro = new RegistroRepositorio();
        
        try {
            registro.agregar(this);
            return "Registro exitoso.";
        } catch (Exception ex) {
            return "Registro invalido.";
        }
    }
}
