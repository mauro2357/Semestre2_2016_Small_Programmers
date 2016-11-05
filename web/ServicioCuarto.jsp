<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
    <head>
        <meta charset="utf-8">
        <title>Servicios al cuarto</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css" />
        <link rel="stylesheet" type="text/css" href="Css/registro.css" />
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
            <article>
                <div id="ru-titulo"><h1>Servicio al cuarto:</h1>
                </div>
                <form action = "ServicioCuartoControlador" method="post">
                    <table>
                        <tr>                            
                            <td>Identificacion:</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="Id" value="<%=usu.getId()%>"  OnFocus="this.blur()"></td>
                        </tr>
                        <tr>
                            <td>Numero de habitación:</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="Cuarto"></td>
                        </tr>
                        <tr>
                            <td>dijite su servicio:</td>
                            <td class="rojo">*</td>
                            <td><textarea name="comentarios" rows="5" cols="20" placeholder="Escribe aquí su solicitud"></textarea></td>
                        </tr>    
                        <tr>
                            <td colspan="6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6"><p><a href="aviso.jsp"> Aviso de Privacidad</a></p></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><input type="submit" name="Enviar solicitud" id="EnviarSolicitud" value="Enviar solicitud" /></td>
                        </tr>
                    </table>
                </form>
            </article>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>