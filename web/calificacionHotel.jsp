<%-- 
    Document   : calificacionHotel
    Created on : 5/08/2016, 02:24:32 PM
    Author     : julianbautista87
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
        tr:nth-child(even){background-color: lightgray}
        
        h1 {
            color: lightgreen;
            font-weight: normal;
            font-family: Verdana, sans-serif;   
            font-size: 42px;
            text-shadow: 2px 2px gray, 3px 3px lightgray;
        }
        
        
        </style>
    </head>
    <body>
        <h1>Su opinion es de suma importancia! Por favor califique cada uno de los servicios y características que nuestro hotel le brindó </h1>
        <table>
            <col width="50%">
            <col width="50%">
            <tr>
                <th>Ítem</th>
                <th>Calificacion</th>
            </tr>
            
            <tr>
                <td>Le prestaron el servicio de manera cordial.</td>
                <td>
                    <span class="">
                      <input id="ratingA5" type="radio" name="rating" value="5">
                      <label for="ratingA5">5</label>
                      <input id="ratingA4" type="radio" name="rating" value="4">
                      <label for="ratingA4">4</label>
                      <input id="ratingA3" type="radio" name="rating" value="3" checked>
                      <label for="ratingA3">3</label>
                      <input id="ratingA2" type="radio" name="rating" value="2">
                      <label for="ratingA2">2</label>
                      <input id="ratingA1" type="radio" name="rating" value="1">
                      <label for="ratingA1">1</label>
                    </span>
                </td>
            </tr>
            <tr>
                <td>La presentación y estado de nuestras instalaciones era el adecuado.</td>
                <td>
                    <span class="">
                        <input id="ratingB5" type="radio" name="rating" value="5">
                        <label for="ratingB5">5</label>
                        <input id="ratingB4" type="radio" name="rating" value="4">
                        <label for="ratingB4">4</label>
                        <input id="ratingB3" type="radio" name="rating" value="3" checked>
                        <label for="ratingB3">3</label>
                        <input id="ratingB2" type="radio" name="rating" value="2">
                        <label for="ratingB2">2</label>
                        <input id="ratingB1" type="radio" name="rating" value="1">
                        <label for="ratingB1">1</label>
                    </span>
                </td>
            </tr>
            <tr>
                <td>El servicio fué rápido y eficaz.</td>
                <td>
                    <span class="">
                        <input id="ratingC5" type="radio" name="rating" value="5">
                        <label for="ratingC5">5</label>
                        <input id="ratingC4" type="radio" name="rating" value="4">
                        <label for="ratingC4">4</label>
                        <input id="ratingC3" type="radio" name="rating" value="3" checked>
                        <label for="ratingC3">3</label>
                        <input id="ratingC2" type="radio" name="rating" value="2">
                        <label for="ratingC2">2</label>
                        <input id="ratingC1" type="radio" name="rating" value="1">
                        <label for="ratingC1">1</label>
                    </span>
                </td>
            </tr>
            <tr>
                <td>Los precios son los adecuados.</td>
                <td>
                    <span class="">
                        <input id="ratingD5" type="radio" name="rating" value="5">
                        <label for="ratingD5">5</label>
                        <input id="ratingD4" type="radio" name="rating" value="4">
                        <label for="ratingD4">4</label>
                        <input id="ratingD3" type="radio" name="rating" value="3" checked>
                        <label for="ratingD3">3</label>
                        <input id="ratingD2" type="radio" name="rating" value="2">
                        <label for="ratingD2">2</label>
                        <input id="ratingD1" type="radio" name="rating" value="1">
                        <label for="ratingD1">1</label>
                    </span>
                </td>
            </tr>
            <tr>
                <td>Encontró con facilidad y en estado limpio y agradable los restaurantes, baños y demas instalaciones dentro de nuestro hotel.</td>
                <td>
                    <span class="">
                        <input id="ratingE5" type="radio" name="rating" value="5">
                        <label for="ratingE5">5</label>
                        <input id="ratingE4" type="radio" name="rating" value="4">
                        <label for="ratingE4">4</label>
                        <input id="ratingE3" type="radio" name="rating" value="3" checked>
                        <label for="ratingE3">3</label>
                        <input id="ratingE2" type="radio" name="rating" value="2">
                        <label for="ratingE2">2</label>
                        <input id="ratingE1" type="radio" name="rating" value="1">
                        <label for="ratingE1">1</label>
                    </span>
                </td>
            </tr>        
            
        </table>

    </body>
</html>
