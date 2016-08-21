/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.NotificacionesRepositorio;

/**
 *
 * @author julianbautista87
 */
public class Notificacion {
    private String fecha;
    private String descripcion;

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String Notificar()
    {
        try{
            NotificacionesRepositorio notificacionRep = new NotificacionesRepositorio();
            notificacionRep.IngresarNotificacion(fecha, descripcion);
            return "Ingreso procesado";
        }
        catch (Exception e){
            return "Ingreso no procesado";
        }
    }
}