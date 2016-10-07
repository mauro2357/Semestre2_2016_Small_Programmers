/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.ReservarRepositorio;

/**
 *
 * @author Usuario
 */
public abstract class Planes {
    String codigo;
    int camas;
    String fechaEntrada;
    String fechaSalida;
    String tipo;
    int precio;
    public String getTipo() {
        return tipo;
    }


    public Planes(String codigo, int camas, String fechaEntrada, String fechaSalida,String tipo, int precio) {
        this.codigo = codigo;
        this.camas = camas;
        
        this.fechaEntrada = fechaEntrada;
        this.fechaSalida = fechaSalida;
        this.tipo=tipo;
        this.precio = precio; 
    }
    public  void validarPlan(){
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
    
    public String gettipo() {
        return tipo;
    }
    
     public void setTipo(String tipo) {
        this.tipo = tipo;
    }

     public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
    public boolean ValidarCompra(int camas) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
    public String Reservar()
    {
        ReservarRepositorio reserva=new ReservarRepositorio();
        try {
            return reserva.agregar(this);
        } 
        catch (Exception ex) { 
            return "Error de conexion con la base de datos";
        }
    }
    
    
    public abstract int precio(String a, String b);
   
}
