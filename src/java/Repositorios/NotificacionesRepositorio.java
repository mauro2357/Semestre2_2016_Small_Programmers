/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.Notificacion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author julianbautista87
 */
public class NotificacionesRepositorio {
    public Collection<Notificacion> consultarNotificaciones()throws Exception{
        
        Collection<Notificacion> notificaciones=new ArrayList<>();
        
        try {
            Conexion conexion = new Conexion();
            Connection con = conexion.ObtenerConexion();
            Statement st;
            ResultSet rs;

            String sql=("SELECT not_fecha, not_descripcion FROM notificaciones;");               //OJO mira la consulta

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                String fecha = rs.getString("not_fecha");               //OJO! Esta es la columna llamada "not_fecha"
                String descripcion = rs.getString("not_descripcion");   //OJO! Esta es la columna llamada "not_descripcion"
                Notificacion notificacionFromDB1 =new Notificacion();
                notificacionFromDB1.setFecha(fecha);                
                notificacionFromDB1.setDescripcion(descripcion);
                notificaciones.add(notificacionFromDB1);
            }
            con.close();
            rs.close();
            st.close();

        } catch (Exception ex) {
                System.out.print(ex.toString());
        }
        
        return notificaciones;
        
    }
    
    public boolean IngresarNotificacion(String fecha, String descripcion){
        try
        {
            Conexion conexion = new Conexion();
            Connection con = conexion.ObtenerConexion();
            
            Statement st;

            String sql= "INSERT INTO notificaciones (not_fecha, not_descripcion) VALUES ('" + fecha + "', '" + descripcion + "');" ;                //OJO mira la consulta

            st=con.createStatement();
            st.executeUpdate(sql);

            con.close();
            st.close();
            
            return true;
        }
        catch(Exception e)
        {
            return false;
        }
        
    }
}
