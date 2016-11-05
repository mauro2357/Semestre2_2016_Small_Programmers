<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>index Administrador</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
    </head>
    <body>
        <%@include file="headerAdministrador.jsp" %>
        <section>            
            <div class="centro">
                <div class="producto">
                    <div class="foto"><img src="img/reservar.png" width="150" height="200" alt="producto 01" /></div>
                    <div class="descripcionA">Eventos</div>
                    <form action="administrador.jsp">
                        <input type="submit" value="Publicar eventos"> 
                    </form>
                </div>
                <div class="producto">
                    <div class="foto"><img src="img/producto.png" width="150" height="200" alt="producto 01" /></div>
                    <div class="descripcionA">Aseo de cuarto</div>
                    <form action="MantenimientoCuarto.jsp">
                        <input type="submit" value="Aseo de habitacion"> 
                    </form>
                </div>
                <div class="producto">
                    <div class="foto"><img src="img/eventos.png" width="150" height="200" alt="producto 01" /></div>
                    <div class="descripcionA">Responder</div>
                    <form action="/Semestre2_2016_Small_Programmers/ConsultaControlador">
                        <input type="submit" value="Responder servicio"> 
                    </form>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
