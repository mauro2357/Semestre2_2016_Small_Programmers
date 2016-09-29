<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Cuenta Administrador</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
    </head>
    <body>
        <%@include file="headerAdministrador.jsp" %>
        <section>
            <div class="centro">
                <form action="/Semestre2_2016_Small_Programmers/IngresarNotificacionesControlador">
                    Fecha:<br>
                        <input type="date" name="fechaIngresada" />
                        <br>
                    Descripcion:<br>
                        <input type="text" name="descripcionIngresada" />
                        <br><br>
                        <input type="submit" value="Ingresar nueva notificación" /> 
                </form>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
