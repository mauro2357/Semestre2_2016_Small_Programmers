/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorios;

import entidadesdominio.Login;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author jhon connor
 */
public class LoginRepositorio {

    public static boolean validate(Login nusuario) throws Exception {
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

    public void validarUsuario(String usuario, String clave) {

        try {
            URL url = new URL("localhost:8080/Semestre2_2016_Linkodev/webresources/servicioAutenticacion?correo=maorca@outlook.com&contrasena=97030809401");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));
            String output;
            System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                System.out.println(output);
            }
            conn.disconnect();

        } catch (MalformedURLException e) {

            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();

        }
    }
}