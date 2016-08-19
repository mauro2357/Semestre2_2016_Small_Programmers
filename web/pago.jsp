<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Forma de pago</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css"  />
        <link rel="stylesheet" type="text/css" href="Css/login.css"  />
        <script src="js/pago.js" type="text/javascript"></script>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
            <article>
                <div class="pasos"><p>1.- Iniciar sesión > 2.- Datos de reserva > <span class="rojo">3.- Forma de pago</span> > 4.- Revisar</p></div>
                <div id="lo-titulo"><h1>Indica la forma de pago</h1></div>
                <div id="lo-forma">
                    <form id="lo-login">
                      <table width="100%" border="0" cellspacing="10">
                        <tr>
                          <td width="51%" class="der">Tarjeta de credito 1:</td>
                          <td width="49%"><input type="radio" name="radio" id="tarjeta1" value="tarjeta1"></td>
                        </tr>
                        <tr>
                          <td class="der">Tarjeta de credito 2:</td>
                          <td><input type="radio" name="radio" id="tarjeta2" value="tarjeta2"></td>
                        </tr>
                        <tr>
                          <td class="der">Tarjeta de credito 3:</td>
                          <td><input type="radio" name="radio" id="tarjeta3" value="tarjeta3"></td>
                        </tr>
                        <tr>
                          <td class="der">Pay pal:</td>
                          <td><input type="radio" name="radio" id="paypal" value="paypal"></td>
                        </tr>
                        <tr>
                          <td class="der">Efectivo:</td>
                          <td><input type="radio" name="radio" id="efectivo" value="efectivo"></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="submit" name="continuar" id="continuar" value="Continuar &gt;&gt;"></td>
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
