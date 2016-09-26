/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

/**
 *
 * @author Usuario
 */
public class Familiar  extends Planes{

    public Familiar(String codigo, int camas, String fechaEntrada, String fechaSalida, String tipo) {
        super(codigo, camas, fechaEntrada, fechaSalida, tipo);
    }
    @Override
   public boolean ValidarCompra(int camas){
   if (camas<1 || camas>5||camas==0){
       return false;
   }
   else{
       return true;
   }
    }
}
