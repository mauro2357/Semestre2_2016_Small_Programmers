/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.ServicioCuarto;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Sebastian
 */
public class ServicioCuartoRepositorio {
    public String agregar (ServicioCuarto S)throws Exception{
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO cuartos values ("+ S.getId() + ",'" + S.getCuarto() +  "'," + S.getDescripcion() + ",null , null )";
        try {
            st = con.createStatement();
            st.executeUpdate(sql);
            con.close();
            st.close();
            return "Somos los mejores";
        } catch (Exception e) {
            return "No se pudo realizar el pedido";
        }
    }
    
}
