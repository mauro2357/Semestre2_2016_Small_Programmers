<%@page import="entidadesdominio.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usu = (Usuario)request.getSession().getAttribute("usuario");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>encabezado usuario</title>
        <link rel="stylesheet" href="Css/estilos.css">
        <link rel="stylesheet" href="Css/fonts.css">
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="CuentaUsuario.jsp"><span class="primero"><i class="icon icon-house"></i></span>Inicio</a></li>
                    <li><a href="index.jsp"><span class="tercero"><i class="icon icon-suitcase"></i></span>LogOut</a></li>
                    <li><a href="callCenter.jsp"><span class="cuarto"><i class="icon icon-text"></i></span>Acerca de</a></li>
                    <li><a href="contacto.jsp"><span class="quinto"><i class="icon icon-mail"></i></span>Contacto</a></li>
                    <p style="background-color: white"><%=usu.getNombre()+" "+usu.getApellido()%></p>
                </ul>
            </nav>
        </header>
    </body>
</html>
