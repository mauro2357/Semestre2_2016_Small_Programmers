<%-- 
    Document   : index
    Created on : 29/07/2016, 07:30:03 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/HotelitoHot/ClientesServlet">
            Nombre de la persona <input type="text" name="Nombre">
            <input type="submit" value="Enviar datos al servidor">
        </form>
        
        <form action="/HotelitoHot/ServiciosServlet">
              <input type="submit" value="Consultar los servicios del hotel">          
        </form>
         
            
        <h1>Hello World!</h1>
    </body>
</html>
