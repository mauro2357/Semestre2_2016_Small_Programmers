<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/login.css"/>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
                <article>
                <div id="lo-titulo"><h1>Iniciar sesión</h1></div>
                <div id="lo-forma">
                    <form id="lo-login" action="SeccionControlador" method="post" >
                      <table width="100%" border="0" cellspacing="10">
                        <tr>
                          <td class="der">Tu correo electronico:</td>
                          <td><input type="email" name="email" id="email" placeholder="Escriba su correo" required/></td>
                        </tr>
                        <tr>
                          <td class="der">Tu clave de acceso:</td>
                          <td><input type="password" name="contrasena" id="contrasena"  placeholder="Escriba su clave" required/></td>
                        </tr>
                        <tr>
                          <td class="der"><a href="#" class="enalceRojo">¿Olvidaste tu clave de acceso?</a></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="submit" name="envia" id="envia" value="Inicio de Sesión"/></td>
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
                <a href="aviso.jsp"  class="enalceRojo"> Aviso de Privacidad</a></div>
          </article>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>