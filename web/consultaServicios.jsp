<%-- 
    Document   : consultaServicios
    Created on : 29/07/2016, 08:00:34 PM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="servicios.ServicioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTADO DE SERVICIOS</h1>
        <table>
            <tr>
                <th>Nombre del servicio</th>
                <th>Descripción del servicio</th>
            </tr>
        <%
            Object objServicios=request.getAttribute("servicios");
            Collection<ServicioDTO> servicios=(ArrayList<ServicioDTO>)objServicios;
            for(ServicioDTO servicio:servicios){  %>              
            <tr>
                <td><%out.println(servicio.getNombre());%> </td>
                <td><%out.println(servicio.getDescripcion());%></td>
            </tr>        
           <% }  %>                 
        </table>
    </body>
</html>
