<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
    <head>
        <meta charset="utf-8">
        <title>Descuentos por cumpleaños</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css" />
        <link rel="stylesheet" type="text/css" href="Css/registro.css" />
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
            <form action = "ServicioCuartoControlador" method="post">
                <table>
                    <tr>
                        <td><input type="text" name="Id">Identificacion</td>
                        <td><input type="text" name="Cuarto">Cuarto para el servicio</td>
                        <td><textarea name="comentarios" rows="10" cols="40">Escribe aquí su solicitud</textarea></td>
                        <td><input type="submit" name="Enviar solicitud" id="EnviarSolicitud" value="Enviar solicitud" /></td>
                    </tr>
                
                </table>
            </form>
            
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>