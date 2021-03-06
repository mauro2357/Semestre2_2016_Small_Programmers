/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.Servicio;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author julianbautista87
 */
public class ServiciosRepositorio {
    public Collection<Servicio> consultarServicios()throws Exception{
        
        Collection<Servicio> servicios=new ArrayList<>();
        
        try {
            Conexion conexion = new Conexion();
            Connection con = conexion.ObtenerConexion();
            Statement st;
            ResultSet rs;

            String sql=("SELECT ser_nombre, ser_descripcion FROM servicios;");           

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                String nombre = rs.getString("ser_nombre");                 
                String descripcion = rs.getString("ser_descripcion");       
                Servicio servicioFromDB1 =new Servicio();
                servicioFromDB1.setNombre(nombre);                
                servicioFromDB1.setDescripcion(descripcion);
                servicios.add(servicioFromDB1);
            }
            con.close();
            rs.close();
            st.close();

        } catch (Exception ex) {

        }
        
        return servicios;
        
    }
}
