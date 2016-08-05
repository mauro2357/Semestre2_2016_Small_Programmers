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
        
        div.stars {
        width: 270px;
        display: inline-block;
        }
        input.star { display: none; }
        label.star {
        float: right;
        padding: 10px;
        font-size: 36px;
        color: #444;
        transition: all .2s;
        }
        input.star:checked ~ label.star:before {
        content: '★';
        color: #FD4;
        transition: all .25s;
        }
        input.star-5:checked ~ label.star:before {
        color: #FE7;
        text-shadow: 0 0 20px #952;
        }
        input.star-1:checked ~ label.star:before { color: #F62; }
        label.star:hover { transform: rotate(-15deg) scale(1.3); }
        label.star:before {
        content: '☆';
        font-family: FontAwesome;
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
                    <div class="stars">
                      <form action="">
                        <input class="star star-5" id="A-star-5" type="radio" name="star"/>
                        <label class="star star-5" for="A-star-5"></label>
                        <input class="star star-4" id="A-star-4" type="radio" name="star"/>
                        <label class="star star-4" for="A-star-4"></label>
                        <input class="star star-3" id="A-star-3" type="radio" name="star"/>
                        <label class="star star-3" for="A-star-3"></label>
                        <input class="star star-2" id="A-star-2" type="radio" name="star"/>
                        <label class="star star-2" for="A-star-2"></label>
                        <input class="star star-1" id="A-star-1" type="radio" name="star"/>
                        <label class="star star-1" for="A-star-1"></label>
                      </form>
                    </div>
                </td>
            </tr>
            <tr>
                <td>La presentación y estado de nuestras instalaciones era el adecuado.</td>
                <td>
                    <div class="stars">
                      <form action="">
                        <input class="star star-5" id="B-star-5" type="radio" name="star"/>
                        <label class="star star-5" for="B-star-5"></label>
                        <input class="star star-4" id="B-star-4" type="radio" name="star"/>
                        <label class="star star-4" for="B-star-4"></label>
                        <input class="star star-3" id="B-star-3" type="radio" name="star"/>
                        <label class="star star-3" for="B-star-3"></label>
                        <input class="star star-2" id="B-star-2" type="radio" name="star"/>
                        <label class="star star-2" for="B-star-2"></label>
                        <input class="star star-1" id="B-star-1" type="radio" name="star"/>
                        <label class="star star-1" for="B-star-1"></label>
                      </form>
                    </div>
                </td>
            </tr>
            <tr>
                <td>El servicio fué rápido y eficaz.</td>
                <td>
                    <div class="stars">
                      <form action="">
                        <input class="star star-5" id="C-star-5" type="radio" name="star"/>
                        <label class="star star-5" for="C-star-5"></label>
                        <input class="star star-4" id="C-star-4" type="radio" name="star"/>
                        <label class="star star-4" for="C-star-4"></label>
                        <input class="star star-3" id="C-star-3" type="radio" name="star"/>
                        <label class="star star-3" for="C-star-3"></label>
                        <input class="star star-2" id="C-star-2" type="radio" name="star"/>
                        <label class="star star-2" for="C-star-2"></label>
                        <input class="star star-1" id="C-star-1" type="radio" name="star"/>
                        <label class="star star-1" for="C-star-1"></label>
                      </form>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Los precios son los adecuados.</td>
                <td>
                    <div class="stars">
                      <form action="">
                        <input class="star star-5" id="D-star-5" type="radio" name="star"/>
                        <label class="star star-5" for="D-star-5"></label>
                        <input class="star star-4" id="D-star-4" type="radio" name="star"/>
                        <label class="star star-4" for="D-star-4"></label>
                        <input class="star star-3" id="D-star-3" type="radio" name="star"/>
                        <label class="star star-3" for="D-star-3"></label>
                        <input class="star star-2" id="D-star-2" type="radio" name="star"/>
                        <label class="star star-2" for="D-star-2"></label>
                        <input class="star star-1" id="D-star-1" type="radio" name="star"/>
                        <label class="star star-1" for="D-star-1"></label>
                      </form>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Encontró con facilidad y en estado limpio y agradable los restaurantes, baños y demas instalaciones dentro de nuestro hotel.</td>
                <td>
                    <div class="stars">
                      <form action="">
                        <input class="star star-5" id="E-star-5" type="radio" name="star"/>
                        <label class="star star-5" for="E-star-5"></label>
                        <input class="star star-4" id="E-star-4" type="radio" name="star"/>
                        <label class="star star-4" for="E-star-4"></label>
                        <input class="star star-3" id="E-star-3" type="radio" name="star"/>
                        <label class="star star-3" for="E-star-3"></label>
                        <input class="star star-2" id="E-star-2" type="radio" name="star"/>
                        <label class="star star-2" for="E-star-2"></label>
                        <input class="star star-1" id="E-star-1" type="radio" name="star"/>
                        <label class="star star-1" for="E-star-1"></label>
                      </form>
                    </div>
                </td>
            </tr>        
            
        </table>

    </body>
</html>
