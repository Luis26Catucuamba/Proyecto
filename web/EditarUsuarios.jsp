<%-- 
    Document   : EditarUsuarios
    Created on : 04-sep-2022, 10:57:46
    Author     : user
--%>

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

        <div class="slogan distanciatop">ACTUALIZAR USUARIO</div><br>
        <div class="container shadow-lg p-3 mb-5 bg-body p-2 text-dark bg-opacity-25 distanciatop">
            
            <form action="EditarUsuario" method="post" class="row g-3 ">
                <table class="table2">
                   <tr>
                        <td class="td">
                            <img src="VISTA/IMG/guardar.png" alt=""/>
                            <input class="botoncrud" type="submit" name="accion" value="Guardar">                            
                        </td>
                        <td class="td">
                            <img src="VISTA/IMG/cancelar.jpg" alt=""/>
                            <input class="botoncrud" type="submit" name="accion" value="Cancelar"> 
                        </td>                      
                    </tr>
                </table>
                <div></div>
                <div class="col-md-4">
                    <label class="form-label">Id Usuario</label>
                    <input type="text" name="pkUsuarioId" value="<%out.print(request.getAttribute("pkUsuarioId"));%>" class="form-control" onkeypress="return solonumeros(event)" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Cédula</label>
                    <input type="text" name="cedulaU" value="<%out.print(request.getAttribute("cedulaU"));%>" class="form-control" onkeypress="return solonumeros(event)">
                </div>
                <div class="col-md-4">
                    <label class="form-label">Nombres</label>
                    <input type="text" name="nombresU" value="<%out.print(request.getAttribute("nombresU"));%>" class="form-control">
                </div>
                <div class="col-md-4">
                    <label class="form-label">Apellidos</label>
                    <input type="text" name="apellidosU" value="<%out.print(request.getAttribute("apellidosU"));%>" class="form-control">
                </div>
                <div class="col-md-4">
                    <label class="form-label">Correo</label>
                    <input type="email" name="correoU" value="<%out.print(request.getAttribute("correoU"));%>" class="form-control">
                </div>
                                    
                <div class="col-md-4">
                    <label class="form-label">Carrera</label>
                    <select name="carrera" class="form-select">
                        <option value="<%out.print(request.getAttribute("carreraId"));%>">  <%out.print(request.getAttribute("carreraId"));%></option>                 
                        <option value="1">Tecnología Superior en Administración</option>
                        <option value="2">Tecnología en Desarrollo de software</option>
                        <option value="3">Diseño Gráfico</option>
                        <option value="4">N/A</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Nivel académico</label>
                    <select name="nivel" class="form-select">
                        <option value="<%out.print(request.getAttribute("nivelAcademicoId"));%>">  <%out.print(request.getAttribute("nivelAcademicoId"));%></option>
                        <option value="1">Primero</option>
                        <option value="2">Segundo</option>
                        <option value="3">Tercero</option>
                        <option value="4">Cuarto</option>
                        <option value="5">Quinto</option>
                        <option value="6">N/A</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Formación académica</label>
                    <select name="formacion" class="form-select">
                        <option value="<%out.print(request.getAttribute("formacionAcademicaId"));%>">  <%out.print(request.getAttribute("formacionAcademicaId"));%></option>
                        <option value="1">Estudiante</option>
                        <option value="2">Docente</option>
                        <option value="3">Usuario externo</option>
                        <option value="4">Primaria</option>
                        <option value="5">Secundaria</option>
                        <option value="6">Superior</option>
                        <option value="7">N/A</option>
                    </select>
                </div>                   
            </form>
        </div>      
    </body>
</html>
