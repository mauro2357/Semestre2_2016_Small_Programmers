<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <script src="js/cuenta.js" type="text/javascript"></script>
        <title>Cuenta de Ususario</title>
    </head>
    <body>

        <%@include file="headerUsuario.jsp" %>
        <section>
            <div class="centro">
                <img id="banner" class="imagen" src="img/mujer.jpg" width="960" height="300" />                    
                <div class="clearout"></div>
                <div class="contenido03">
                    <div class="producto">
                        <div class="foto"><img src="img/consulta.png" width="150" height="200" alt="producto01" /></div>
                        <div class="descripcionA">Consultas</div>
                        <form action="/Semestre2_2016_Small_Programmers/ServiciosControlador">
                            <input type="submit" value="Consultar los servicios"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/calificar.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Calificaciones</div>
                        <form action="/Semestre2_2016_Small_Programmers/CalificacionControlador">
                            <input type="submit" value="Calificación del servicio"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/eventos.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Eventos</div>
                        <form action="/Semestre2_2016_Small_Programmers/NotificacionesControlador">
                            <input type="submit" value="Notificacion de eventos"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/reservar.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Pedidos</div>
                        <form action="ServicioCuarto.jsp">
                            <input type="submit" value="Servicio al cuarto"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/producto.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Planes</div>
                        <form action="Planes.jsp">
                            <input type="submit" value="Tipo de Planes"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/Descuentos.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Descuentos</div>
                        <form action="formulario.jsp">
                            <input type="submit" value="Descuentos"> 
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
