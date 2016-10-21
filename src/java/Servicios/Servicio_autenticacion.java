package Servicios;

import com.google.gson.Gson;
import entidadesdominio.Usuario;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;

/**
 * REST Web Service
 *
 * @author Sebastian
 */
@Path("ServiciosCalificacion")
public class Servicio_autenticacion {

    @Context
    private UriInfo context;
    /**
     * Creates a new instance of ServiciosCalificacion
     */
    public Servicio_autenticacion() {
    }

    /**
     * Retrieves representation of an instance of Servicios.Servicio_autenticacion
     * @return an instance of entidadesdominio.Calificacion
     */
    @GET
    @Produces("text/html")
    public String getXml(@QueryParam ("datos") String correo,@QueryParam ("constra") String contra) throws Exception {
        Gson g=new Gson();
        //Usuario usuario=g.fromJson(usr, Usuario.class);
        Usuario usuario=new Usuario();
        usuario.setCorreo(correo);
        usuario.setContraseña(contra);
        usuario=usuario.iniciarSesion();
        String UsrAns=g.toJson(usuario);
        return UsrAns;
    }

    /**
     * PUT method for updating or creating an instance of Servicio_autenticacion
     */
    @PUT
    @Consumes("application/xml")
    public void putXml(String calificacionIn) {
    }
}