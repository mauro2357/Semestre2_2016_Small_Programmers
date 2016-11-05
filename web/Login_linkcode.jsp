<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <script src="js/index.js" type="text/javascript"></script>
        <title>Ingresa</title>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
            <h1>Ingresa a Los servicios del Hotel</h1>
            <form action="IngresoVentas" method="post">
                <h3>Escribe tu correo</h3>
                <input name="correo" required="true" type="email">
                <h3>Escribe tu contraseña</h3>
                <input name="contrasena" required="true" type="password"><br><br>
                <button type="submit">Ingresar</button>
            </form>
        </section>
        <%@ include file="footer.jsp"%>
    </body>
</html>