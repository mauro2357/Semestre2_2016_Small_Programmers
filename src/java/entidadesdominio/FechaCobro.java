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
import com.sun.xml.ws.config.metro.parser.jsr109.String;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FechaCobro {
    public  int DiferenciaFechas(java.lang.String a , java.lang.String b){

        Date dinicio = null, dfinal = null;
            long milis1, milis2, diff;
 
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-DD");
 
            try {
                    dinicio = sdf.parse(a);
                    dfinal = sdf.parse(b);                    
                   
            } catch (ParseException e) {
 
                    System.out.println("Se ha producido un error en el parseo");
            }
           
         
            Calendar cinicio = Calendar.getInstance();
            Calendar cfinal = Calendar.getInstance();
             cinicio.setTime(dinicio);
             cfinal.setTime(dfinal);
 
 
         milis1 = cinicio.getTimeInMillis();
 
         milis2 = cfinal.getTimeInMillis();
 
 
         diff = milis2-milis1;
 
     int diffdias = (int) Math.abs ( diff / (24 * 60 * 60 * 1000) );
 
 
            return  diffdias;
    }
}
