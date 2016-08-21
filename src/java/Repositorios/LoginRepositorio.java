/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author edist
 */
public class LoginRepositorio {
    
    
public static boolean validate(Login nusuario) throws Exception{          
        boolean status = false;  
		Connection con = new Conexion().ObtenerConexion();	
		PreparedStatement pst = con.prepareStatement("select * from usuarios where email=? and  contrasena=?");  
        ResultSet rs = null;  
    
        try {  
            pst.setString(1, nusuario.getCorreo());  
            pst.setString(2, nusuario.getContraseña()); 
            System.out.println(pst);
  
            rs = pst.executeQuery();  
            status = rs.next();  
            System.out.println(status);
  
        } catch (Exception e) {  
            System.out.println(e);  
        } finally {  
            if (con != null) {  
                try {  
                    con.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (pst != null) {  
                try {  
                    pst.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (rs != null) {  
                try {  
                    rs.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        }  
        return status;  
    }  
}
