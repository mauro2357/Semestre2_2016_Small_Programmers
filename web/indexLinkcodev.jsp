<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Css/Style.css" type="text/css"/>
        <script src="js/index.js" type="text/javascript"></script>
        <title>bienvenida</title>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <h1>bienvenido</h1>
        <section>
            <%=(String) request.getSession().getAttribute("msg")%>
        </section>
        <%@ include file="footer.jsp"%>
    </body>
</html>
