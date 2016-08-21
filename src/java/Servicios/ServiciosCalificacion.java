/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicios;

import Repositorios.ServiciosRepositorio;
import entidadesdominio.Calificacion;
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
        return new ServiciosRepositorio().consultarServicios().toString();
    }

    /**
     * PUT method for updating or creating an instance of ServiciosCalificacion
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/xml")
    public void putXml(String calificacionItem1) {
        Calificacion calificacion=new Calificacion();
        calificacion.setCalificacionItem1(5);
        calificacion.setCalificacionItem2(5);
        calificacion.setCalificacionItem3(5);
        calificacion.setCalificacionItem4(5);
        calificacion.setCalificacionItem5(5);
        calificacion.setComentarios("Bien");
        String mensaje=calificacion.calificar(); 
        System.out.println(mensaje);
    }
}
