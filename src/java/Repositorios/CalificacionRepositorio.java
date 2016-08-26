/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.Notificacion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author julianbautista87
 */
public class CalificacionRepositorio {
    
    float promedioItem1;
    float promedioItem2;
    float promedioItem3;
    float promedioItem4;
    float promedioItem5;
    float promedioTotal;

    public float getPromedioTotal() {
        return promedioTotal;
    }
    
    public void IngresarCalificacion(int id_usuario, int item1, int item2, int item3, int item4, int item5, String comentarios)throws Exception{
        
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = String.format("INSERT INTO calificaciones (calificacionItem1,calificacionItem2,calificacionItem3,calificacionItem4,calificacionItem5,comentarios, id_usuario) VALUES (%1$d,%2$d,%3$d,%4$d,%5$d,'%6$s',%7$d);", item1, item2,  item3,  item4,  item5,  comentarios, id_usuario);
        try{
            st=con.createStatement();
            System.out.println("antes");
            st.executeUpdate(sql);
            con.close();
            st.close();
            System.out.println("datos cargados correctamente");
        }
        catch(SQLException e){
            throw new RuntimeException(e);
        } 
        
        
    }
    
    public void ObtenerPromedios(){
        try {
            Conexion conexion = new Conexion();
            Connection con = conexion.ObtenerConexion();
            Statement st;
            ResultSet rs;

            String sql=("SELECT AVG(calificacionItem1) AS promedioItem1 FROM calificaciones;");               //OJO mira la consulta

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                promedioItem1 = rs.getFloat("promedioItem1");
            }
            
            sql=("SELECT AVG(calificacionItem2) AS promedioItem2 FROM calificaciones;");               //OJO mira la consulta

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                promedioItem2 = rs.getFloat("promedioItem2");
            }
            
            sql=("SELECT AVG(calificacionItem3) AS promedioItem3 FROM calificaciones;");               //OJO mira la consulta

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                promedioItem3 = rs.getFloat("promedioItem3");
            }
            
            sql=("SELECT AVG(calificacionItem4) AS promedioItem4 FROM calificaciones;");               //OJO mira la consulta

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                promedioItem4 = rs.getFloat("promedioItem4");
            }
            
            sql=("SELECT AVG(calificacionItem5) AS promedioItem5 FROM calificaciones;");               //OJO mira la consulta

            st=con.createStatement();
            rs=st.executeQuery(sql);

            while (rs.next()) {
                promedioItem5 = rs.getFloat("promedioItem5");
            }
            
            promedioTotal = (promedioItem1 + promedioItem2 + promedioItem3 + promedioItem4 + promedioItem5)/5;
            
            con.close();
            rs.close();
            st.close();

        } catch (Exception ex) {
                System.out.print(ex.toString());
        }
    }
    
}
