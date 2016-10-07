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
public class Economico  extends Planes{

    public Economico(String codigo, int camas, String fechaEntrada, String fechaSalida, String tipo, int precio) {
        super(codigo, camas, fechaEntrada, fechaSalida, tipo, precio);
    }
    /**
     *
     * @param camas
     * @return
     */
    @Override
    public boolean ValidarCompra(int camas){
        if(0<camas && camas<=2){
            return true;
        }
        else{
            return false;
        }
    }
    
    @Override
    public int precio(String a, String b) {
         FechaCobro convertir=new FechaCobro();
         int precio_dia=80000;
        return convertir.DiferenciaFechas(a,b)*precio_dia;
    }
}
  