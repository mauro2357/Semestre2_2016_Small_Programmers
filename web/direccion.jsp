<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Direccion de envio</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css" />
        <link rel="stylesheet" type="text/css" href="Css/registro.css" />
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
        <!-------- 	CONTENT --------->
            <article>
                <div class="pasos"><p>1.- Iniciar sesión ><span class="rojo">2.- Datos de reserva</span> > 3.- Forma de pago > 4.- Revisar</p></div>
                <div id="ru-titulo"><h1>Datos de envio:</h1>
              </div>
                <p>Favor de capturar los datos de envio para continuar con su compra:</p>
                <p>&nbsp;</p>
                <form id="ru-formulario" action="Reservar" method="post">
                    <table width="100%" border="0">
                        <tr>
                            <td>Numero de reserva:</td>
                            <td></td>
                            <td><input type="text" name="codigo" id="codigo" required placeholder="Nro de reserva"/></td>
                            <td>Nro de camas</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="camas" id="camas" min="1" max="5" required placeholder="Cantidad de camas"/></td>
                        </tr>
                        <tr>
                            <td>Fecha de entrada:</td>
                            <td class="rojo">*</td>
                            <td><input type="date" name="fechaEntrada" id="fechaEntrada" required placeholder="Fecha de entrada"/></td>
                            <td>Fecha de salida:</td>
                            <td class="rojo">*</td>
                            <td><input type="date" name="fechasalidad" id="fechaSalida" required placeholder="Fecha de salida"/></td>
                            <td><input type="text" name="tipo" value="normal" id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                        </tr>
                        <tr>
                            <td colspan="6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6"><p><a href="aviso.html"> Aviso de Privacidad</a></p></td>   
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><input type="submit" name="continuar" id="continuar" value="Continuar &gt;&gt;" /></td>
                        </tr>
                    </table>
                </form>
            </article>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>