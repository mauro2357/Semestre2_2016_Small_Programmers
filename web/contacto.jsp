<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Contacto</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/contacto.css"  />
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
            <article>
                <div id="co-caja">
                    <div id="co-titulo"><h1>Contáctanos</h1></div>
                    <div id="co-texto"><p>Tus comentarios son muy importantes para nosotros. Selecciona el área a la que va dirigida.</p></div>
                    <div id="co-forma">
                        <form id="co-comentario">
                            <table width="100%" border="0" cellspacing="10">
                                <tr>
                                    <td class="der">Área que desea contactar:</td>
                                    <td><select name="area" id="area">
                                            <option value="No seleccionada">-No seleccionada-</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td class="der">Nombre:</td>
                                    <td><input type="text" name="nombre" id="nombre" placeholder="Escriba su nombre"/></td>
                                </tr>
                                <tr>
                                    <td class="der">Apellido Paterno:</td>
                                    <td><input type="text" name="apellidoPaterno" id="apellidoPaterno" /></td>
                                </tr>
                                <tr>
                                    <td class="der">Apellido Materno:</td>
                                    <td><input type="text" name="apellidoMaterno" id="apellidoMaterno" /></td>
                                </tr>
                                <tr>
                                    <td class="der">Correo electrónico:</td>
                                    <td><input type="email" name="email" id="email" /></td>
                                </tr>
                                <tr>
                                    <td class="der">Estado:</td>
                                    <td><select name="estado" id="estado">
                                            <option>-No seleccionado-</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td class="der">Código Postal:</td>
                                    <td><input type="text" pattern="^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$" name="codigo" id="codigo" /></td>
                                </tr>
                                <tr>
                                    <td class="der arriba">Comentario:</td>
                                    <td><textarea name="comentario" id="comentario" cols="45" rows="5"></textarea></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><button id="envia" class="botonRojo">Envía Mensaje &gt;</button></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </article>
        </section>
        <%@ include file ="footer.jsp" %> 
    </body>
</html>
