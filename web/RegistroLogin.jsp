<%-- 
    Document   : RegistroLogin
    Created on : 02-sep-2022, 16:44:33
    Author     : user
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
        <div class="animated bounceInDown ">          
            <div class="container1">                
                <span class="error animated tada" id="msg"></span>
                <form action="GuardarLogin1" method="post" class="box">

                    <h4>REGISTRARSE</h4>
                    <h5>Ingrese sus datos</h5>

                    <input required="" placeholder="Cédula" type="text" name="cedula" onkeypress="return solonumeros(event)">           
                    <input required="" placeholder="Contraseña" type="password" name="contrasenia">

                    <tr>
                        <td>
                            <select class="estilpciones" name="cargo">
                                <option  values="usuario"> Usuario </option>                            
                            </select> 
                        </td>
                    </tr>

                    <input type="submit"  name="accion" value="ACEPTAR" class="btn1"></a>
                    <a href="Login.jsp" class="dnthave">Regresar</a>             
                </form>

            </div>
            <tr>
                <td></td>
            </tr>
            <div class="footer">   
                <p class="mensaje"><%out.print(request.getAttribute("msj"));%></p>
                <span>By: <i class="fa"></i>Alexandra</a></span>
            </div>
        </div>
    </body>
</html>
