<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Detalle producto</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css"  />
        <link rel="stylesheet" type="text/css" href="Css/producto.css"  />
    </head>
    <body>
        <header>
        <%@ include file="header.jsp"%>
        <section>
            <!-------- 	CONTENT --------->
            <div id="pd-content">
                <div id="pd-columnaIzq">
                    <div id="pd-migas">Home > Producto</div>
                    <div id="pd-fotos"><img src="img/producto.png" width="100%" height="100%"></div>
                    <div id="pd-marcas"><p>Num producto: 77462519376</p><p>Precio: $9,999.00</p></div>   
                    <div id="pd-descripcion"></div>
                </div>

                <div id="pd-columnaCen">
                    <div id="pd-encabezado"><h2>Habitacion Del Amor</h2><p>Original de Fidias, erigida en el siglo V a.C. en la AcrÃ³polis de Atenas.</p></div>
                    <div id="pd-producto"><h2>Descripción producto</h2><p>Mi habitación está subiendo las escaleras de mi casa, es mediana, blanca y todos los muebles son de madera. En mi escritorio hay una lámpara, mi portátil, encima de mi escritorio hay una estantería grande donde guardo mis libros y mis Monster Highs, también guardo mi material para hacer mis deberes.</p></div>
                </div>

                <div id="pd-columnaDer">
                    <div id="pd-carrito">Tu carrito de compras</div>
                    <div id="forma"><form><button><a href="checkout.jsp">Comprar</a></button><button><a href="index.jsp">Regresar</a></button></form></div>
                    <div id="pd-accesorio1" class="pd-accesorio">Otro producto 1</div>
                    <div id="pd-accesorio2" class="pd-accesorio">Otro producto 2</div>
                    <div id="pd-accesorio3" class="pd-accesorio">Otro producto 3</div>
                    </div>
            </div>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>
