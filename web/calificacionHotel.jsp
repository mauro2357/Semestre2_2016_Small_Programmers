<%-- 
    Document   : calificacionHotel
    Created on : 18/08/2016, 12:31:31 AM
    Author     : julianbautista87
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="entidadesdominio.Servicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="Css/login.css"/>
        <link rel="stylesheet" type="text/css" href="Css/calificacionStyle.css"  />
    </head>
    <body>
        <%@include file="headerUsuario.jsp" %>
        <section>
                <article>
                <div id="lo-titulo"><h1>Por favor califique cada uno de los servicios y características que nuestro hotel le brindó</h1></div>
                <div id="lo-forma">
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
                        <tr>
                            <th colspan="2">Comentarios:</th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <textarea>Comentarios...</textarea>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="Submit" value="Enviar calificación y comentarios">
                            </th>
                        </tr>
                    </table>
                </div>
                <div id="lo-aviso"><p></p>
                <p>Lee nuestro 
                <a href="aviso.jsp"  class="enalceRojo"> Aviso de Privacidad</a></div>
          </article>
        </section>
        <%@ include file="footer.jsp" %> 
    </body>
</html>