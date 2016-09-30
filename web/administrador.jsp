<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Cuenta Administrador</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/login.css"/>
    </head>
    <body>
        <%@include file="headerAdministrador.jsp" %>
        <section>
            <div class="centro">
                <article>
                    <div id="lo-titulo"><h1>Ingresar eventos del hotel</h1></div>
                    <div id="lo-forma">
                        <form action="/Semestre2_2016_Small_Programmers/IngresarNotificacionesControlador">
                            <table>
                                <tr>
                                    <td class="der">Fecha:<br></td>
                                    <td><input type="date" name="fechaIngresada" /></td>
                                </tr>
                                <tr>
                                    <td class="der">Descripcion:<br></td>
                                    <td><input type="text" name="descripcionIngresada" /></td>
                                <tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="submit" value="Ingresar nueva notificación" /></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </article>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
