<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Mensaje de compra</title>
        <link rel="stylesheet" type="text/css" href="css/Style.css"  />
        <link rel="stylesheet" type="text/css" href="css/carrito.css"  />
        <script src="js/funciones.js" type="text/javascript"></script>
        <script>
        window.onload = function(){
            var envia = document.getElementById("continuar");
            envia.onclick = function(){
                location.href = "index.jsp";
            };
        };
        </script>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <!-------- 	CONTENT --------->
        <section>
            <div id="ca-content">
              <div id="ca-mensaje">
              <p>Gracias por su compra, su registro es el XXXXXXXXXX</p>
              <p><script> document.write(fechaHoy()); </script></p>
              <button id="continuar">Continuar >></button>
              </div>
               <div id="ca-datos">
               <p>Metodos de pago: Pay Pal</p>
               <p>Nombre: xxxxxx xxxxxx xxxxxxx xxxxxxxx</p>
               <p>Empresa: xxxxxx xxxxxx xxxxxxx xxxxxxxx</p>
               <p>Direcci�n: xxxxxx xxxxxx xxxxxxx xxxxxxxx</p>
               <p>Codigo Postal: xxxxxx </p>
               </div>  
              <div id="ca-detalle">
                <table width="100%">
                    <tr>
                        <th width="100">Producto</th>
                        <th width="568">Descripci�n</th>
                        <th width="87">Precio</th>
                        <th width="58">Cant.</th>
                        <th width="99">Subtotal</th>
                        <th width="64">Borrar</th>
                    </tr>
                    <tr>
                        <td height="161">
                        <img src="img/producto.png" width="105" height="143" alt="Atenea">
                        </td>
                        <td>
                        <p class="ca-descripcion">Mi habitaci�n est� subiendo las escaleras de mi casa, es mediana, blanca y todos los muebles son de madera. En mi escritorio hay una l�mpara, mi port�til, encima de mi escritorio hay una estanter�a grande donde guardo mis libros y mis Monster Highs, tambi�n guardo mi material para hacer mis deberes.</p>
                        </td>
                        <td class="ca-precio">$9,999.00</td>
                        <td class="ca-cant">1</td>
                        <td class="ca-subtotal">$9,999.00</td>
                        <td class="ca-cant">Borrar</td>
                    </tr>
                </table>
                <hr>
                <table width="100%">
                    <tr>
                      <td></td>
                      <td width="113" class="ca-precio">Subtotal:</td>
                      <td class="ca-precio"> $9,999.00</td>
                  </tr>
                    <tr>
                      <td></td>
                      <td class="ca-precio">Descuento:</td>
                      <td class="ca-precio">$0.00</td>
                  </tr>
                    <tr>
                      <td></td>
                      <td class="ca-precio">Costo de envio:</td>
                      <td class="ca-precio"> $0.00</td>
                  </tr>
                  <tr>
                      <td></td>
                      <td class="ca-precio">Gran total:</td>
                      <td class="ca-precio"> $9,999.00</td>
                  </tr>
                  <tr>
                        <th width="781" class="ca-precio"><button>Seguir comprando</button></th>
                        <th class="ca-precio"><button>Actualizar carrito</button></th>
                        <th width="90" class="ca-cant"><button>Pagar</button></th>
                    </tr>
                </table>
              </div>      
          </div>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>
