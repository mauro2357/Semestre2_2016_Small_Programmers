package Repositorios;

import entidadesdominio.Administrador;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import entidadesdominio.Usuario;
import java.sql.ResultSet;

/**
 *
 * @author Usuario
 */

public class RegistroRepositorio {

    public void agregar(Usuario usr) throws Exception {
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO usuarios (`nombre`, `apellido`, `email`, `contrasena`, `idusuarios`, `telefono`) values ('" + usr.getNombre() + "','" + usr.getApellido() + "','" + usr.getCorreo() + "','" + usr.getContraseña() + "'," + usr.getId() + "," + usr.getTelefono() + ")";
        try {
            st = con.createStatement();
            st.executeUpdate(sql);
            con.close();
            st.close();
            System.out.println("datos cargados correctamente");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void agregarAdminastrador(Usuario usr) throws Exception {
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO administrador (`nombre`, `apellido`, `email`, `contrasena`, `idadministrador`, `telefono`,` personal`) values ('" + usr.getNombre() + "','" + usr.getApellido() + "','" + usr.getCorreo() + "','" + usr.getContraseña() + "','" + usr.getId() + "','" + usr.getTelefono() + "','"+ usr.getTipoPersona() +"')";
        System.out.println(sql);
        try {
            st = con.createStatement();
            System.out.println("nada");
            st.executeUpdate(sql);
            System.out.println("listo");
            con.close();
            st.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
          
        }
    }

    public Usuario getDatosUsuarioBD(String correo)throws SQLException{
        Usuario usu = new Usuario();
        Conexion conex = new Conexion();
        try {
            Statement estatuto2 = conex.ObtenerConexion().createStatement();
            ResultSet rs = estatuto2.executeQuery("SELECT * FROM usuarios where email='"+correo+"';");
            usu.setCorreo(correo);
            rs.next();
            String usu_nombre = rs.getString("nombre");
            String usu_ape = rs.getString("apellido");
            String usu_contra = rs.getString("contrasena");
            String usu_id = rs.getString("idusuarios");
            String usu_telefono = rs.getString("telefono");

            usu.setNombre(usu_nombre);
            usu.setApellido(usu_ape);
            usu.setContraseña(usu_contra);
            usu.setId(usu_id);
            usu.setTelefono(usu_telefono);
                       
            estatuto2.close();
        } 
        catch (SQLException e) {
            throw new SQLException("El usuario con correo "+correo+" no pudo ser encontrado en la base de datos, vuelve a la pagina principal y ingresa los datos correctamente.");
        }
        return usu;
    }     
    
    public Usuario getDatosAdministradorBD(String correo)throws SQLException{
        //Administrador admi = new Administrador();
        Usuario admi = new Usuario();
        
        Conexion conex = new Conexion();
        try {
            Statement estatuto2 = conex.ObtenerConexion().createStatement();
            ResultSet rs = estatuto2.executeQuery("SELECT * FROM administrador where email='"+correo+"';");
            admi.setCorreo(correo);
            rs.next();
            String usu_nombre = rs.getString("nombre");
            String usu_ape = rs.getString("apellido");
            String usu_contra = rs.getString("contrasena");
            String usu_id = rs.getString("idadministrador");
            String usu_telefono = rs.getString("telefono");

            admi.setNombre(usu_nombre);
            admi.setApellido(usu_ape);
            admi.setContraseña(usu_contra);
            admi.setId(usu_id);
            admi.setTelefono(usu_telefono);
                       
            estatuto2.close();
        } 
        catch (SQLException e) {
            throw new SQLException("El usuario con correo "+correo+" no pudo ser encontrado en la base de datos, vuelve a la pagina principal y ingresa los datos correctamente.");
        }
        return admi;
    }     
}
