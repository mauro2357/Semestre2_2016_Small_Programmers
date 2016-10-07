/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.CoborDeReservas;
import Repositorios.ServicioCuartoRepositorio;

/**
 *
 * @author Usuario
 */
public class CobroReserva {
    int id;
    String tipoReserva;
    String precio; 

    public CobroReserva(int id, String tipoReserva, String precio) {
        this.id = id;
        this.tipoReserva = tipoReserva;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String gettipoReserva() {
        return tipoReserva;
    }

    public void settipoReserva(String tipoReserva) {
        this.tipoReserva = tipoReserva;
    }

    public String getprecio() {
        return precio;
    }

    public void setTipoPersona(String precio) {
        this.precio = precio;
    }
}
