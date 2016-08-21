<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="Css/Planes.css" type="text/css"/>
         <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <title>Planes de negocio</title>
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
            <div class="centro">
                <br>
                <br>
                <br>
                <div>
                    <table>
                        <tr>
                            <td> 
                                <div  id="baner"> 
                                    <p>plan familiar contiene  habitacion con cuatro camas separadas  television ,
                                    wifi<br> y dos baños
                                    desayuno gratis el primer dia y bono de descuento en el restaurante </p>
                                    <img src="img/familiar.jpg" width="200" height="100"  />
                                    <br>
                                    <li><a href="PlanFamiliar.jsp"><button>comprar</button></a></li>
                                </div>
                            </td>  
                            <td> 
                                <div  id="baner"> 
                                    <p>plan romantico contiene  habitacion decorada para la
                                    ocasion , television <br>,wifi
                                    cena romantica y botella de vino segun
                                    el gusto del cliente</p>
                                    <img src="img/romantico.jpg" width="200" height="100" alt="Brand" />
                                    <br>
                                    <li><a href="Romantico.jsp"><button>comprar</button></a></li>
                                </div>
                            </td>  
                            <td> 
                                <div  id="baner"> 
                                    <p>plan economico incluye habitacion sencilla y desayuno gratis el primer dia 
                                    televicion y telefonia</p>
                                    <br>
                                    <img src="img/normal.jpg" width="200" height="100" alt="Brand" />
                                    <br>
                                    <li><a href="Economico.jsp"><button>comprar</button></a></li>
                                    <br>                                    
                                </div>                                    
                            </td> 
                            <td> 
                                <div  id="baner"> 
                                    <p>plan ejecutivo ideal para sus viajes de negocio contiene habitacion con cama individual
                                    telefono, wifi y television</p>
                                    <img src="img/ejecutivo.jpg" width="200" height="100" alt="Brand" />
                                    <br>
                                    <br>
                                    <li><a href="Ejecutivo.jsp"><button>comprar</button></a></li>
                                </div>                                                                              
                            </td>
                        </tr>                            
                    </table>           
                </div>         
            </div>
        </section>
        <%@include file="footer.jsp" %>
</html>
