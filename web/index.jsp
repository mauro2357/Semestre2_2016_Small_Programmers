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
        <style>
        form {
            border-radius: 10px;
            background-color: #ccffcc;
            padding: 20px;
            margin: 5px 5px;
        }

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 10px 0;
            display: inline-block;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: green;
            color: white;
            padding: 14px 20px;
            margin: 10px 0px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: darkgreen;
        }
        
        h1 {
            color: lightgreen;
            font-weight: normal;
            font-family: Verdana, sans-serif;   
            font-size: 42px;
            text-shadow: 2px 2px gray, 3px 3px lightgray;
            text-align: center;
        }

        </style>
    </head>
    <body>
        <h1>Bienvenido al hotel</h1>
        <form action="/Semestre2_2016_Small_Programmers/ClientesServlet">
            Ingrese el nombre de la persona: <input type="text" name="Nombre">
            <input type="submit" value="Enviar datos al servidor">
        </form>
        
        <form action="/Semestre2_2016_Small_Programmers/ServiciosServlet">
              <input type="submit" value="Consultar los servicios del hotel"> 
        </form>
        
        <form action="/Semestre2_2016_Small_Programmers/NotificacionesServlet">
              <input type="submit" value="Notificacion de eventos"> 
        </form>
         
            
        
    </body>
</html>
