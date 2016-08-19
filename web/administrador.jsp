<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Administrador</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
            <div class="centro">
                <form action="/Semestre2_2016_Small_Programmers-master/IngresarNotificacionesControlador">
                    Fecha:<br>
                        <input type="text" name="fechaIngresada" />
                        <br>
                    Descripcion:<br>
                        <input type="text" name="descripcionIngresada" />
                        <br><br>
                        <input type="submit" value="Ingresar nueva notificación (solo administrador)" /> 
                </form>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
