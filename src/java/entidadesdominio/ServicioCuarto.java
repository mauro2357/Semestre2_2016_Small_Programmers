/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.ServicioCuartoRepositorio;

/**
 *
 * @author usuario
 */
public class ServicioCuarto {
    String id;
    String Descripcion;
    int Cuarto;
    String TipoPersona; 

    public ServicioCuarto(String id, String Descripcion, int Cuarto, String TipoPersona) {
        this.id = id;
        this.Descripcion = Descripcion;
        this.Cuarto = Cuarto;
        this.TipoPersona = TipoPersona;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getCuarto() {
        return Cuarto;
    }

    public void setCuarto(int Cuarto) {
        this.Cuarto = Cuarto;
    }

    public String getTipoPersona() {
        return TipoPersona;
    }

    public void setTipoPersona(String TipoPersona) {
        this.TipoPersona = TipoPersona;
    }

    public String ServicioCuarto(){
        ServicioCuartoRepositorio ServicioCuarto = new ServicioCuartoRepositorio();
        try {
            return ServicioCuarto.agregar(this);
        } catch (Exception ex) {
            return "Error de la  conexion con la base de datos";
        }
    }
    
}
