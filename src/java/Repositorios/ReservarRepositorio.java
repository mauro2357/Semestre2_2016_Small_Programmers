package Repositorios;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import entidadesdominio.Reserva;
/**
 *
 * @author Usuario John Connor
 */

public class ReservarRepositorio {
    public String agregar(Reserva rev)throws Exception{
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        String sql = "INSERT INTO reservas values ( null,"+rev.getCodigo()+",'"+rev.getCamas()+"','"+rev.getFechaEntrada()+"','"+rev.getFechaSalida()+"','"+rev.gettipo()+"')";
        try{
            st=con.createStatement();
            st.executeUpdate(sql);
            con.close();
            st.close();
            return "Se agregó la reserva correctamente";
        }
        catch(SQLException e){
            return "No se pudo agregar la reserva. Vuelva a intentarlo.";
        }  
    }

}

