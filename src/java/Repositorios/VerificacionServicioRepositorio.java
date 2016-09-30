/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.VerificacionServicio;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Usuario
 */
public class VerificacionServicioRepositorio {
  public String agregar (VerificacionServicio S)throws Exception{
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "update cuartos set estado='"+S.getEstado()+"',responder='"+S.getResponder()+"'Where idusuarios='"+S.getIdusuario()+"'";
         System.out.println(sql);
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

