/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.ReservarRepositorio;

/**
 *
 * @author julianbautista87
 */
public class Reserva {
    String codigo;
    int camas;
    String fechaEntrada;
    String fechaSalida;

    public Reserva(String codigo, int camas, String fechaEntrada, String fechaSalida) {
        this.codigo = codigo;
        this.camas = camas;
        this.fechaEntrada = fechaEntrada;
        this.fechaSalida = fechaSalida;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getCamas() {
        return camas;
    }

    public void setCamas(int camas) {
        this.camas = camas;
    }

    public String getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(String fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public String getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(String fechaSalida) {
        this.fechaSalida = fechaSalida;
    }
    
    public String Reservar()
    {
        ReservarRepositorio reserva=new ReservarRepositorio();
        try {
            return reserva.agregar(this);
        } catch (Exception ex) { 
            return "Error de conexion con la base de datos";
        }
    }
    
}