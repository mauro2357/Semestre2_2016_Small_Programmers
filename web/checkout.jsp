<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Checkout</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css"  />
        <link rel="stylesheet" type="text/css" href="Css/login.css"  />
        <!--<script src="js/chechout.js" type="text/javascript"></script>-->
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
            <article>
                <div class="pasos"><p><span class="rojo">1.- Iniciar sesión </span>> 2.- Datos de reserva > 3.- Forma de pago > 4.- Revisar</p></div>
                <div id="lo-titulo"><h1>Iniciar sesión</h1></div>
                <div id="lo-forma">
                    <form id="lo-login" action="LoginReservar" method="post">
                      <table width="100%" border="0" cellspacing="10">
                        <tr>
                          <td class="der">Tu correo electronico:</td>
                          <td><input type="email" name="email" id="email" placeholder="Escriba su correo" required/></td>
                        </tr>
                        <tr>
                          <td class="der">Tu clave de acceso:</td>
                          <td><input  type="password" name="contrasena" id="contrasena"  placeholder="Escriba su clave" required/></td>
                        </tr>
                        <tr>
                          <td class="der"><a href="#" class="enalceRojo">¿Olvidaste tu clave de acceso?</a></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="submit" name="envia" id="envia" value="Continuar &gt;"/></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>¿Eres nuevo usuario?</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><a href="registro.jsp" class="enalceRojo">Registrate al sitio</a></td>
                        </tr>
                      </table>
                      </form>
                </div>
                <div id="lo-aviso"><p></p>
                <p>Lee nuestro 
                <a href="aviso.jsp"  class="enalceRojo">Aviso de Privacidad</a></div>
          </article>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>
