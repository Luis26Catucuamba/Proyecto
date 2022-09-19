<%-- 
    Document   : index
    Created on : 07/09/2022, 9:50:34
    Author     : Ale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="VISTA/BOOTSTRAP/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <title>Biblioteca</title>
    </head>

    <body>
        <div class="container"> 
            <div>
                <p class="parrafo">INICIAR SISTEMA BIBLIOTECA</p>
            </div>

            <div class="principal">                  
                <form action="MiServletBD" method="post">            
                    <input class="botoninicio" type="submit" name="accion" value="INICIAR"><BR><BR>
                </form>
            </div>
        </div>   
    </body>
</html>
