<%@page import="entidadesdominio.Notificacion"%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="entidadesdominio.Servicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/login.css"/>
        <link rel="stylesheet" type="text/css" href="Css/notificacionStyle.css"/>
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
                <article>
                <div id="lo-titulo"><h1>ULTIMOS EVENTOS</h1></div>
                <div id="lo-forma">
                    <table>
                        <tr>
                            <th>Fecha del evento</th>
                            <th>Descripción del evento</th>
                        </tr>
                    <%
                        Object objServicios=request.getAttribute("notificaciones");
                        Collection<Notificacion> notificaciones=(ArrayList<Notificacion>)objServicios;
                        for(Notificacion notificacion:notificaciones){  %>              
                        <tr>
                            <td><%out.println(notificacion.getFecha());%> </td>
                            <td><%out.println(notificacion.getDescripcion());%></td>
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