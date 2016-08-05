<%-- 
    Document   : consultaNotificaciones
    Created on : 5/08/2016, 12:20:13 AM
    Author     : julianbautista87
--%>

<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="servicios.Notificacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notificaciones</title>
        <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td, h1 {
            text-align: center;
            padding: 8px;
        }
        
        th {
            background-color: lightgreen;
            color: white;
        }
        
        h1 {
            color: lightgreen;
            font-weight: normal;
            font-family: Verdana, sans-serif;   
            font-size: 42px;
            text-shadow: 2px 2px gray, 3px 3px lightgray;
        }

        tr:nth-child(even){background-color: lightgray}

        
        </style>
    </head>
    <body>
        <h1>ULTIMOS EVENTOS</h1>
        <table>
            <tr>
                <th>Fecha del evento</th>
                <th>Descripción del evento</th>
            </tr>
        <%
            Object objServicios=request.getAttribute("notificaciones");
            Collection<Notificacion> notificaciones=(ArrayList<Notificacion>)objServicios;
            for(Notificacion notificacion:notificaciones){  %>              
            <tr>
                <td><%out.println(notificacion.getFecha());%> </td>
                <td><%out.println(notificacion.getDescripcion());%></td>
            </tr>        
           <% }  %>                 
        </table>
    </body>
</html>
