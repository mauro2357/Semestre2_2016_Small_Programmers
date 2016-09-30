<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Registrar Personal del hotel</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css"  />
        <link rel="stylesheet" type="text/css" href="Css/registro.css"  />
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
            <article>
                <div id="ru-titulo"><h1>Registro:</h1>
                </div>
                <p>Favor de capturar los datos para continuar con su compra:</p>
                <p>&nbsp;</p>
                <form id="ru-formulario" action="Registro1" method="post">
                    <table width="100%" border="0">
                        <tr>
                            <td>Nombre:</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="nombre" id="nombre" required placeholder="Escriba su nombre" 
                                       /></td>
                            <td>Telefono:</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="telefono" id="telefono" required placeholder="Escriba su telefono"/></td>
                        </tr>
                        <tr>
                            <td>Apellido Primero</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="apellidoPaterno" id="apellidoPaterno" required placeholder="Apellido Primero"
                                       /></td>
                            <td>Cuenta de correo</td>
                            <td class="rojo">*</td>
                            <td><input type="email" name="mail" id="mail" required placeholder="Escriba su mail"
                                       /></td>
                        </tr>
                        <tr>
                            <td>Apellido Segundo:</td>
                            <td class="rojo">&nbsp;</td>
                            <td><input type="text" name="apellidoMaterno" id="apellidoMaterno" placeholder="Apellido Segundo"
                                       /></td>
                            <td>Confirma cuenta de correo:</td>
                            <td class="rojo">*</td>
                            <td><input type="email" name="mail2" id="mail2" required placeholder="Confirme su mail"/></td>
                        </tr>
                        <td>Fecha de nacimiento:</td>
                        <td class="rojo">*</td>
                        <td><input type="date" name="fecha" id="fecha" required placeholder="Fecha de nacimiento" 
                                   /></td>
                        <td>Contraseña:</td>
                        <td class="rojo">*</td>
                        <td><input type="password" name="contrasena" id="contrasena" required placeholder="Clave secreta" min="4" max="24"/></td>
                        <tr>
                            <td>Identificación:</td>
                            <td class="rojo">*</td>
                            <td><input type="text" name="identificacion" id="ciudad" required placeholder="Escriba su identificacion" 
                                       /></td>
                            <td>Confirma contraseña:</td>
                            <td class="rojo">*</td>
                            <td><input type="password" name="contrasena2" id="contrasena2" required placeholder="Confirme su clave"  min="4" max="24"/></td>
                            <td> <input type="text" name="tipoPersona"  value ="Administrador" id="" required placeholder="tipo"OnFocus="this.blur()"/></td>
                        </tr>
                        <tr>
                            <td colspan="6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6"><p><a href="aviso.jsp"> Aviso de Privacidad</a></p>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><input type="submit" name="registrate" id="registrate" value="Regístrate &gt;&gt;" /></td>
                        </tr>
                    </table>
                </form>
            </article>
        </section>
        <%@ include file="footer.jsp" %>
    </body>
</html>
