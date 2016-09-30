/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.ServicioCuarto;
import entidadesdominio.VerificacionServicio;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author 
 */
public class ServicioCuartoRepositorio {
    public Collection<VerificacionServicio> consultarNotificaciones()throws Exception{
        Collection<VerificacionServicio> consultas=new ArrayList<>();
        try {
         Conexion conexion = new Conexion();
         Connection con = conexion.ObtenerConexion();
         Statement st;
         ResultSet rs;
           
          String sql=("SELECT idcuartos,idusuarios,habitacion,descripcion,estado,responder,persona  FROM cuartos Where estado=0; ");  
           
          st=con.createStatement();
          rs=st.executeQuery(sql);
                while (rs.next()) {
                      
                int id= rs.getInt("idcuartos");
                String ide = rs.getString("idusuarios");
                int habitacion = rs.getInt("habitacion"); 
                String descripcion = rs.getString("descripcion");
                String estado = rs.getString("estado");
                String responder = rs.getString("responder");
                String persona = rs.getString("persona");
                
               
                //OJO! Esta es la columna llamada "not_fecha"
          
                //OJO! Esta es la columna llamada "not_descripcion"
                VerificacionServicio cuarto =new VerificacionServicio(id,ide,habitacion,descripcion,estado,responder,persona);
                    System.out.println(cuarto.getDescripcion());
                consultas.add(cuarto);
              
                }
            con.close();
            rs.close();
            st.close();
          } catch (Exception ex) {
                System.out.print(ex.toString());
        }
        
        return consultas;
        }
       

    public String agregar (ServicioCuarto S)throws Exception{
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO cuartos values (null ,'"+ S.getId() + "'," + S.getCuarto() +  ",'" + S.getDescripcion() + "',0 , null, '"+S.getTipoPersona()+"' )";
        try {
            st = con.createStatement();
            System.out.println("nada");
            st.executeUpdate(sql);
            con.close();
            st.close();
            System.out.println("exitosa");
            return "Somos los mejores";
        } catch (Exception e) {
            return "No se pudo realizar el pedido";
        }
    }
    
}