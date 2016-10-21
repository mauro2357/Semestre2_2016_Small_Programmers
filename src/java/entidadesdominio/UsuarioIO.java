/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

/**
 *
 * @author Usuario
 */
public class UsuarioIO {
    private String nombre;
    private String correo;
    private String contrasena;
    private String contrasenaCambio;
    private String telefono;
    private String fotourl;
    private int calificacion;
    private int contadorCalificacion;

    public UsuarioIO(String nombre, String correo, String contrasena, String telefono) {
        this.nombre = nombre;
        this.correo = correo;
        this.contrasena = contrasena;
        this.telefono = telefono;
    }

    public UsuarioIO(String correo, String contrasena, String contrasenaCambio) {
        this.correo = correo;
        this.contrasena = contrasena;
        this.contrasenaCambio = contrasenaCambio;       
        this.contrasena = contrasena;
        this.contrasenaCambio = contrasenaCambio;
    }

    public UsuarioIO(String correo, String contrasena) {
        this.correo = correo;
        this.contrasena = contrasena;        
    }

    public UsuarioIO() {
        this.nombre = "";
        this.correo = "";
        this.contrasena = "";
        this.telefono = "";
        this.fotourl = "";
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getContrasenaCambio() {
        return contrasenaCambio;
    }

    public void setContrasenaCambio(String contrasenaCambio) {
        this.contrasenaCambio = contrasenaCambio;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFotourl() {
        return fotourl;
    }

    public void setFotourl(String fotourl) {
        this.fotourl = fotourl;
    }

    public int getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }

    public int getContadorCalificacion() {
        return contadorCalificacion;
    }

    public void setContadorCalificacion(int contadorCalificacion) {
        this.contadorCalificacion = contadorCalificacion;
    }
    
}
