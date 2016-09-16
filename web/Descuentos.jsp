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
                                    <p>Si esta ceracana tu fecha de cumpleaños y quieres celebrarla con nosotros dento del hotel
                                        <br> puedes venir y te haremos un 20% de descuento por la reservacion </p>
                                    <img src="img/cumpleaños.png" width="200" height="100"  />
                                    <br>
                                    <li><a href="DescuentoCumpleaños.jsp"><button>solicitar</button></a></li>
                                </div>
                            </td>  
                            <td> 
                                <div  id="baner"> 
                                    <p>Si eres una persona mayor de 70 años y quieres pasar un tiempo alejado del mundo nuestro hotel
                                        <br> es la mejor opcion ven y por estar aqui con nosotros te haremos un 30% de descuento en la reservacion</p>
                                    <img src="img/mayor-70.png" width="200" height="100" alt="Brand" />
                                    <br>
                                    <li><a href="Descuento70.jsp"><button>solicitar</button></a></li>
                                </div>
                            </td> 
                        </tr>                            
                    </table>           
                </div>         
            </div>
        </section>
        <%@include file="footer.jsp" %>
</html>
