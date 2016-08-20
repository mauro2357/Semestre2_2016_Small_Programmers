/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import DTO.ServicioDTO;
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
}
