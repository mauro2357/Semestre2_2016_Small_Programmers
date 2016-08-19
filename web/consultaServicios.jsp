<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="DTO.ServicioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/login.css"/>
        <link rel="stylesheet" type="text/css" href="Css/servicioStyle.css"/>
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
                <article>
                <div id="lo-titulo"><h1>LISTADO DE SERVICIOS</h1></div>
                <div id="lo-forma">
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
                </div>
                <div id="lo-aviso"><p></p>
                <p>Lee nuestro 
                <a href="aviso.jsp"  class="enalceRojo"> Aviso de Privacidad</a></div>
          </article>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>