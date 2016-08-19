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
                <div class="contenido02">
                    <div class="list_carousel">
                            <ul id="foo0">
                                <li><div class="Brand"><img src="img/brand01.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand02.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand03.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand04.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand05.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand06.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand07.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand08.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand09.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand10.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand11.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand12.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand13.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand14.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand15.png" width="60" height="60" alt="Brand" /></div></li>
                                <li><div class="Brand"><img src="img/brand16.png" width="60" height="60" alt="Brand" /></div></li>
                            </ul>
                            <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearout"></div>
                <div class="contenido03">
                    <div class="producto">
                        <div class="foto"><img src="img/consulta.png" width="150" height="200" alt="producto01" /></div>
                        <div class="descripcionA">Consultas</div>
                        <form action="/Semestre2_2016_Small_Programmers-master/ServiciosControlador">
                            <input type="submit" value="Consultar los servicios"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/calificar.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Calificaciones</div>
                        <form action="/Semestre2_2016_Small_Programmers-master/CalificacionControlador">
                            <input type="submit" value="Calificación del servicio"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/eventos.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Eventos</div>
                        <form action="/Semestre2_2016_Small_Programmers-master/NotificacionesControlador">
                            <input type="submit" value="Notificacion de eventos"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/reservar.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Reservas</div>
                        <form action="reservas.jsp">
                            <input type="submit" value="Reservar habitacion"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/producto.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Reservas</div>
                        <form action="reservas.jsp">
                            <input type="submit" value="Reservar habitacion"> 
                        </form>
                    </div>
                    <div class="producto">
                        <div class="foto"><img src="img/producto.png" width="150" height="200" alt="producto 01" /></div>
                        <div class="descripcionA">Reservas</div>
                        <form action="reservas.jsp">
                            <input type="submit" value="Reservar habitacion"> 
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
