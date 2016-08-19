package Repositorios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @autho EJJJ
 */
public class Conexion {
    Connection co;    
    String bd = "hotel_Application";
    String login = "root";
    String password = "root";
    String url = "jdbc:mysql://localhost/"+bd;
    static boolean databaseTableCheck = false;
    
    public Conexion(){    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            co = DriverManager.getConnection(url,login,password);
        }catch (ClassNotFoundException exc) {
            exc.printStackTrace();
        }catch (SQLException ex) {
             Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    Connection ObtenerConexion() {
        
        if(databaseTableCheck == false)
        {
            CheckTables();
            databaseTableCheck = true;
        }
        
        return this.co;
    }
    
    void CheckTables()
    {
        try{
            Connection con = co;
            Statement st;
            
            //Crea la tabla de servicios
            String sqlServicios= "CREATE TABLE IF NOT EXISTS servicios (" +
                "  id_servicios int NOT NULL AUTO_INCREMENT," +
                "  ser_nombre varchar(45) DEFAULT NULL," +
                "  ser_descripcion varchar(45) DEFAULT NULL," +
                "  PRIMARY KEY (id_servicios)" +
                ");" ; 
            
            //Crea la tabla de notificaciones
            String sqlNotificaciones=  "CREATE TABLE IF NOT EXISTS notificaciones (" +
                "  idnotificaciones int NOT NULL AUTO_INCREMENT," +
                "  not_fecha varchar(45) DEFAULT NULL," +
                "  not_descripcion varchar(45) DEFAULT NULL," +
                "  PRIMARY KEY (idnotificaciones)" +
                ");";
            
            //Crea la tabla de usuarios
            String sqlUsuarios=  "CREATE TABLE IF NOT EXISTS usuarios (" +
                "  nombre varchar(45) DEFAULT NULL," +
                "  apellido varchar(45) DEFAULT NULL," +
                "  email varchar(45) DEFAULT NULL," +
                "  contrasena varchar(45) DEFAULT NULL," +
                "  idusuarios int NOT NULL AUTO_INCREMENT," +
                "  telefono varchar(45) DEFAULT NULL," +
                "  PRIMARY KEY (idusuarios)" +
                ");";

            //Crea la tabla de reservas
            String sqlReservas=  "CREATE TABLE IF NOT EXISTS reservas (" +
                "  idreservas int NOT NULL AUTO_INCREMENT," +
                "  codigo varchar(45) DEFAULT NULL," +
                "  camas varchar(45) DEFAULT NULL," +
                "  fechaEntrada varchar(45) DEFAULT NULL," +
                "  fechaSalida varchar(45) DEFAULT NULL," +
                "  PRIMARY KEY (idreservas)" +
                ");";

            
            st=con.createStatement();
            st.executeUpdate(sqlServicios);
            st.executeUpdate(sqlNotificaciones);
            st.executeUpdate(sqlUsuarios);
            st.executeUpdate(sqlReservas);

        }
        catch(Exception e)
        {
            System.out.print(e.toString());
        }
    }
}
