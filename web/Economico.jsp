<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <meta charset="utf-8">
        <title>Plan Economico</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css" />
        <link rel="stylesheet" type="text/css" href="Css/registro.css" />
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
        <!-------- 	CONTENT --------->
            <article>
                <div id="ru-titulo"><h1>Datos de envio:Economico</h1>
                </div>
                <p>Favor de capturar los datos de envio para continuar con su compra:</p>
                <p>&nbsp;</p>
                <form id="ru-formulario" action="Reservar" method="post">
                    <table width="100%" border="0">
                        <tr>
                            <td>Identificación:</td>
                            <td></td>
                            <td><input type="text" name="codigo" id="codigo" value="<%=usu.getId()%>"  OnFocus="this.blur()"/></td>
                            <td>Nro de camas</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="camas"  id="camas" value=1 min="1" max="2" required placeholder="Cantidad de camas"/></td>
                        </tr>
                        <tr>
                            <td>Fecha de entrada:</td>
                            <td class="rojo">*</td>
                            <td><input type="date" name="fechaEntrada" id="fechaEntrada" required placeholder="Fecha de entrada"/></td>
                            <td>Fecha de salida:</td>
                            <td class="rojo">*</td>
                            <td><input type="date" name="fechasalidad"  id="fechaSalida" required placeholder="Fecha Salidad" /></td>

                            <td> <input type="text" name="tipo"  value ="Economico" id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
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
