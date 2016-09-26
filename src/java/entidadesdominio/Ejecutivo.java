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
public class Ejecutivo extends Planes{
    
    public Ejecutivo(String codigo, int camas, String fechaEntrada, String fechaSalida, String tipo) {
        super(codigo, camas, fechaEntrada, fechaSalida, tipo);
    }

    /**
     *
     * @param camas
     * @return
     */
    @Override
     public boolean ValidarCompra(int camas){
      if(camas==1) {  
     return true;
     }
      else{
          return false;
      }
    }
    
}
