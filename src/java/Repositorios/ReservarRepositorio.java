package Repositorios;

import entidadesdominio.Planes;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import entidadesdominio.Reserva;
/**
 *
 * @author Usuario John Connor
 */
public class ReservarRepositorio {

    /**
     *
     * @param rev
     * @return
     * @throws Exception
     */
    public String agregar(Planes rev)throws Exception{
        Conexion conexion = new Conexion();
        Connection con = conexion.ObtenerConexion();
        Statement st;
        
        String sql = "INSERT INTO reservas values ( null,'"+rev.getCodigo()+"',"+rev.getCamas()+",'"+rev.getFechaEntrada()+"','"+rev.getFechaSalida()+"','"+rev.gettipo()+"', "+rev.getPrecio()+")";
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