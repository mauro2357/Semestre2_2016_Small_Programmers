/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.ReservarRepositorio;

/**
 *
 * @author JohnConnor
 */
public class Reserva  extends Planes{
     int p;
    public Reserva(String codigo, int camas, String fechaEntrada, String fechaSalida, String tipo) {
        super(codigo, camas, fechaEntrada, fechaSalida, tipo);
    }
    
    /**
     *
     * @param camas
     * @return
     */
     @Override
   public boolean ValidarCompra(int camas){
    if(camas==0){
    return false;
    }
    else{
        return true;
    }
   }
   }

