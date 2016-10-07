<%-- 
    Document   : CobroReservas
    Created on : 07-oct-2016, 15:26:24
    Author     : Usuario
--%>
<%@page import="entidadesdominio.CobroReserva"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="entidadesdominio.Servicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>cobro de las reservas</title>
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
            <article>
                <div id="lo-titulo"><h1>ULTIMOS PEDIDOS</h1></div>
                <div id="lo-forma">
                    <table>
                        <tr>
                            <th>Identificacion</th>
                            <th>Ttipo de plan</th>
                            <th>Precio</th>
                        </tr>
                        <%
                            Object objServicios = request.getAttribute("consultas");
                            Collection<CobroReserva> consultas = (ArrayList<CobroReserva>) objServicios;
                            for (CobroReserva notificacion : consultas) {  %>              
                        <tr> 
                        <form action="RespuestaServicioAceptadaControlador"method="post">
                            <td> <input type="text" name="idcuarto"  value =<%out.println(notificacion.getId());%>id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                            <td> <input type="text" name="id"  value = <%out.println(notificacion.gettipoReserva());%>id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                            <td> <input type="text" name="usuario"  value = <%out.println(notificacion.getprecio());%>id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                        </form>
                        </tr>   
                        <% }%>                 
                    </table>
                </div>
                <div id="lo-aviso"><p></p>
                    <p>Lee nuestro 
                        <a href="aviso.jsp"  class="enalceRojo"> Aviso de Privacidad</a>
                </div>
            </article>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
