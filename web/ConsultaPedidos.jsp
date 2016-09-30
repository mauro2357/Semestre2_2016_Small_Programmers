<%@page import="entidadesdominio.VerificacionServicio"%>
<%@page import="entidadesdominio.ServicioCuarto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>

        <link rel="stylesheet" type="text/css" href="Css/notificacionStyle.css"/>
    </head>
    <body>
        <%@include file="headerAdministrador.jsp" %>
        <section>
            <article>
                <div id="lo-titulo"><h1>ULTIMOS PEDIDOS</h1></div>
                <div id="lo-forma">
                    <table>
                        <tr>
                            <th>codigo</th>
                            <th>Codigo Servicio</th>
                            <th>Usuario</th>
                            <th>Habitacion</th>
                            <th> Pedido</th>
                            <th> Respuesta</th>
                            <th>___________</th>
                            <th>___________</th>

                        </tr>
                        <%
                            Object objServicios = request.getAttribute("consultas");
                            Collection<VerificacionServicio> consultas = (ArrayList<VerificacionServicio>) objServicios;
                            for (VerificacionServicio notificacion : consultas) {  %>              


                        <tr> 
                        <form action="RespuestaServicioAceptadaControlador"method="post">
                            <td> <input type="text" name="idcuarto"  value =<%out.println(notificacion.getIdcuarto());%>id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                            <td> <input type="text" name="id"  value = <%out.println(notificacion.getIdusuario());%>id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                            <td> <input type="text" name="usuario"  value = <%out.println(notificacion.getPersona());%>id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                            <td><%out.println(notificacion.getHabitacion());%></td>
                            <td><%out.println(notificacion.getDescripcion());%></td>
                            <td><textarea name="comentarios" rows="5" cols="20" placeholder="observacion"></textarea></td>

                            <td><input type="submit" value="Atender"> </td>

                        </form>

                        </tr>   

                        <% }%>                 
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