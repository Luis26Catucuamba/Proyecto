<%-- 
    Document   : ListadoUsuarios
    Created on : 03-sep-2022, 12:54:10
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.User"%>
<%@page import="user.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="VISTA/BOOTSTRAP/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <title>Biblioteca</title>
    </head>

    <body>
        <div class="container-fluid p-0 contenidonav  bg-light">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid ">  
                    <a class="navbar-brand" href="#">
                        <img src="VISTA/IMG/icono.JPG" alt="">                      
                    </a>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown"  style="background-color: #DCD4D3; ">
                        <ul class="navbar-nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link" href="Inicio.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="ListadoUsuarios.jsp">Usuarios</a>
                            </li>                          
                            <li class="nav-item">
                                <a class="nav-link" href="ListadoLibros.jsp">Libros</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ListadoPrestamos.jsp">Préstamos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ListadoDevoluciones.jsp">Devoluciones</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Mi Perfil</a>                     
                                <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                    <li><a class="dropdown-item" href="index.jsp">Salir</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <div class="slogan distanciatop">USUARIOS</div><br>
        <div class="container shadow-lg p-3 mb-5 bg-body p-2 text-dark bg-opacity-25 distanciatop" >

            <form action="CrudUsuario" method="post">   
                <table class="table2">
                    <tr>
                        <td class="td">
                            <img src="VISTA/IMG/nuevo.jpg" alt=""/>
                            <input class="botoncrud" type="submit" name="accion" value="Nuevo">                            
                        </td>
                        <td class="td">
                            <img src="VISTA/IMG/editar.png" alt=""/>
                            <input class="botoncrud" type="submit" name="accion" value="Actualizar"> 
                        </td>
                        <td class="td">
                            <img src="VISTA/IMG/eliminar.png" alt=""/>
                            <input class="botoncrud" type="submit" name="accion" value="Eliminar">
                        </td>
                        <td class="td">
                            <img src="VISTA/IMG/buscar.jpg" alt=""/>
                            <input class="cedula" placeholder="ID USUARIO" type="text" name="pkUsuarioId" onkeypress="return solonumeros(event)"> 
                        </td>
                    </tr>                   
                </table>
            </form>
            <table class="table1">
                <tr>
                    <td class="td" colspan="">
                        <p class="mensaje"><%out.print(request.getAttribute("msj"));%></p>
                    </td>
                </tr>                  
            </table>

            <div class="table-responsive overflow-scroll divtabla">
                <table class="table caption-top">
                    <caption>Lista de usuarios</caption>
                    <thead>
                        <tr class="table-secondary">
                            <th>ID USUARIO</th>
                            <th>CÉDULA</th>
                            <th>NOMBRES</th>
                            <th>APELLIDOS</th>
                            <th>CORREO</th>
                            <th>CARRERA</th>
                            <th>NIVEL ACADÉMICO</th>
                            <th>FORMACIÓN ACADÉMICA</th>
                        </tr>
                    </thead>

                    <tbody>                        
                        <%
                            UserService user = new UserService();
                            List<User> datos = user.listarUsuarios();
                            for (User u : datos) {
                        %> 
                        <tr>
                            <td><%= u.getPkUsuariosId()%></td>
                            <td><%= u.getCedulaU()%></td>
                            <td><%= u.getNombresU()%></td>
                            <td><%= u.getApellidosU()%></td>
                            <td><%= u.getCorreoU()%></td>
                            <td><%= u.getCarreraId()%></td>
                            <td><%= u.getNivelAcademicoId()%></td>
                            <td><%= u.getFormacionAcademicaId()%></td>                            
                        </tr> 
                        <%}%> 
                    </tbody>
                </table>
            </div>         
        </div>
    </body>
</html>
