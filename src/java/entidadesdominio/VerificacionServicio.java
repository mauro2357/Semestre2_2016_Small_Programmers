/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.VerificacionServicioRepositorio;

/**
 *
 * @author Usuario
 */
public class VerificacionServicio {
    int idcuarto;
    String idusuario;
    int habitacion;
    String descripcion;
    String estado;
    String Responder;
    String persona;

    public VerificacionServicio(int idcuarto, String idusuario, int habitacion, String descripcion, String estado, String Responder, String persona) {
        this.idcuarto = idcuarto;
        this.idusuario = idusuario;
        this.habitacion = habitacion;
        this.descripcion = descripcion;
        this.estado = estado;
        this.Responder = Responder;
        this.persona = persona;
    }
    

    public int getIdcuarto() {
        return idcuarto;
    }

    public void setIdcuarto(int idcuarto) {
        this.idcuarto = idcuarto;
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public int getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(int habitacion) {
        this.habitacion = habitacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getResponder() {
        return Responder;
    }

    public void setResponder(String Responder) {
        this.Responder = Responder;
    }

    public String getPersona() {
        return persona;
    }

    public void setPersona(String persona) {
        this.persona = persona;
    }
   public String VerificacionServicio(){
        VerificacionServicioRepositorio ServicioCuarto = new VerificacionServicioRepositorio();
        try {
            return ServicioCuarto.agregar(this);
        } catch (Exception ex) {
            return "Error de la  conexion con la base de datos";
        }
    }
}

