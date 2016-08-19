package Repositorios;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import DTO.Reserva;
/**
 *
 * @author Usuario
 */

public class ReservarRepositorio {
    public void agregar(Reserva rev)throws Exception{
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO reservas values ("+rev.getCodigo()+",'"+rev.getCamas()+"','"+rev.getFechaEntrada()+"','"+rev.getFechaSalida()+"')";
        try{
            st=con.createStatement();
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