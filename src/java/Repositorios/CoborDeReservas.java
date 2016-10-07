/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.CobroReserva;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Usuario
 */
public class CoborDeReservas {
    public Collection<CobroReserva> consultarNotificaciones(String identificacion)throws Exception{
        Collection<CobroReserva> consultas=new ArrayList<>();
        try {
         Conexion conexion = new Conexion();
         Connection con = conexion.ObtenerConexion();
         Statement st;
         ResultSet rs;
           
          String sql=("SELECT codigo,tipo,precio  FROM reservas Where codigo= "+identificacion);  
           
          st=con.createStatement();
          rs=st.executeQuery(sql);
                while (rs.next()) {
                      
                int id= rs.getInt("idusuarios"); 
                String tipoReserva = rs.getString("tipo");
                String precio = rs.getString("precio");
                          
                //OJO! Esta es la columna llamada "not_fecha"
          
                //OJO! Esta es la columna llamada "not_descripcion"
                CobroReserva reservas =new CobroReserva(id,tipoReserva,precio);
                consultas.add(reservas);
              
                }
            con.close();
            rs.close();
            st.close();
          } catch (Exception ex) {
                System.out.print(ex.toString());
        }
        
        return consultas;
    }
}
