package Repositorios;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import entidadesdominio.Usuario;

/**
 *
 * @author Usuario
 */

public class RegistroRepositorio {

    public void agregar(Usuario usr) throws Exception {
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO usuarios values ('" + usr.getNombre() + "','" + usr.getApellido() + "','" + usr.getCorreo() + "','" + usr.getContraseña() + "'," + usr.getId() + "," + usr.getTelefono() + ")";
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
        String sql = "INSERT INTO administrador values ('" + usr.getNombre() + "','" + usr.getApellido() + "','" + usr.getCorreo() + "','" + usr.getContraseña() + "','" + usr.getId() + "','" + usr.getTelefono() + "','"+ usr.getTipoPersona() +"')";
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
}
