<%-- 
    Document   : formulario
    Created on : 07-oct-2016, 16:53:50
    Author     : Usuario
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/login.css"/>
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
            <article>
                <div id="lo-titulo"><h1>Pecios de mis reservas</h1></div>
                <div id="lo-forma">
                    <form id="lo-login" action="CobroReservarControlador" method="post" >
                        <table width="100%" border="0" cellspacing="10">
                            <tr>
                                <td class="der">identificación:</td>
                                <td><input type="text" name="Identificacion" id="email" placeholder="Escriba su identificación" required/></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" id="envia" value="Buscar"/></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </article>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
