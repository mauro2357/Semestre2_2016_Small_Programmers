package Servicios;

import Repositorios.CalificacionRepositorio;
import Repositorios.ServiciosRepositorio;
import entidadesdominio.Calificacion;
import javax.jws.WebParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;

/**
 * REST Web Service
 *
 * @author Sebastian
 */
@Path("ServiciosCalificacion")
public class ServiciosCalificacion {

    @Context
    private UriInfo context;
    /**
     * Creates a new instance of ServiciosCalificacion
     */
    public ServiciosCalificacion() {
    }

    /**
     * Retrieves representation of an instance of Servicios.ServiciosCalificacion
     * @return an instance of entidadesdominio.Calificacion
     */
    @GET
    @Produces("text/html")
    public String getXml() throws Exception {

        CalificacionRepositorio calificacionRepositorio = new CalificacionRepositorio();
        calificacionRepositorio.ObtenerPromedios();
        Float promedio = calificacionRepositorio.getPromedioTotal();
        return promedio.toString();
    }

    /**
     * PUT method for updating or creating an instance of ServiciosCalificacion
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/xml")
    public void putXml(String calificacionIn) {
        
        int nota = Integer.parseInt(calificacionIn);
        Calificacion calificacion=new Calificacion();
        calificacion.setCalificacionItem1(nota);
        calificacion.setCalificacionItem2(nota);
        calificacion.setCalificacionItem3(nota);
        calificacion.setCalificacionItem4(nota);
        calificacion.setCalificacionItem5(nota);
        calificacion.setComentarios("Calificacion enviada por servicio web");
        String mensaje=calificacion.calificar(); 
        System.out.println(mensaje);
    }
}