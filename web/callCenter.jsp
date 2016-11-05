<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Call center</title>
        <link rel="stylesheet" type="text/css" href="Css/Style.css"  />
        <link rel="stylesheet" type="text/css" href="Css/aviso.css"  />
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section>
            <!-------- 	CONTENT --------->
            <article>
                <div id="co-caja">
                    <div id="co-titulo"><h1>Call Center</h1></div>
                    <div id="av-texto">
                        <script>
                            if (window.XMLHttpRequest) {
                                //Navegador moderno
                                xhttp = new XMLHttpRequest();
                            } else {
                                //IE 5-6
                                xhttp = new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            //Lee archivo 
                            xhttp.open("GET", "xml/callCenter.xml", false);
                            xhttp.send();
                            xmlDoc = xhttp.responseXML;
                            //
                            var callCenters = xmlDoc.documentElement.childNodes;

                            for (i = 0; i < callCenters.length; i++) {
                                if (callCenters[i].nodeType == 1) {
                                    //
                                    cc = callCenters[i].childNodes;
                                    //
                                    num = cc[1].childNodes[0].nodeValue;
                                    calle = cc[3].childNodes[0].nodeValue;
                                    ciudad = cc[5].childNodes[0].nodeValue;
                                    estado = cc[7].childNodes[0].nodeValue;
                                    telefono = cc[9].childNodes[0].nodeValue;
                                    mapa = cc[11].childNodes[0].nodeValue;
                                    //
                                    document.write("<br>");
                                    document.write("Dirección: " + calle + ", " + ciudad + ", " + estado + "<br>");
                                    document.write("Teléfono: " + telefono + "<br><br>");
                                    document.write("<img src='img/" + mapa + "'>");
                                    document.write("<br><hr>");
                                }
                            }
                        </script>
                    </div>
                </div>
            </article>
        </section>
        <%@ include file ="footer.jsp" %> 
    </body>
</html>
