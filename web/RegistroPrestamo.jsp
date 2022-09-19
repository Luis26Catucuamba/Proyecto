<%-- 
    Document   : RegistroUsuarios
    Created on : 04-sep-2022, 2:58:20
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
                                <a class="nav-link" href="ListadoUsuarios.jsp">Usuarios</a>
                            </li>                          
                            <li class="nav-item">
                                <a class="nav-link" href="ListadoLibros.jsp">Libros</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="ListadoPrestamos.jsp">Préstamos</a>
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

        <div class="slogan distanciatop">REGISTRO PRÉSTAMO</div><br>
        <div class="container shadow-lg p-3 mb-5 bg-body p-2 text-dark bg-opacity-25 distanciatop">

            <form action="GuardarPrestamo" method="post" class="row g-3 ">
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
                <div class="col-md-3">
                    <label class="form-label">Fecha Préstamo</label>
                    <input type="date" name="fechaPrestamo" class="form-control">
                </div>
                <div>
                    <h3>Datos del Usuario</h3>
                </div>      
                <div class="col-md-4">
                    <label class="form-label">Id Usuario</label>
                    <input type="text" name="pkUsuarioId" value="<%out.print(request.getAttribute("pkUsuarioId"));%>" class="form-control" onkeypress="return solonumeros(event)" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Cédula</label>
                    <input type="text" name="cedulaU" value="<%out.print(request.getAttribute("cedulaU"));%>" class="form-control" onkeypress="return solonumeros(event)" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Nombres</label>
                    <input type="text" name="nombresU" value="<%out.print(request.getAttribute("nombresU"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Apellidos</label>
                    <input type="text" name="apellidosU" value="<%out.print(request.getAttribute("apellidosU"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Correo</label>
                    <input type="email" name="correoU" value="<%out.print(request.getAttribute("correoU"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Carrera</label>
                    <input type="text" name="carreraId" value="<%out.print(request.getAttribute("carreraId"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Nivel Académico</label>
                    <input type="text" name="nivelAcademico" value="<%out.print(request.getAttribute("nivelAcademicoId"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Formación Académica</label>
                    <input type="text" name="formacionAcademica" value="<%out.print(request.getAttribute("formacionAcademicaId"));%>" class="form-control" readonly>
                </div>
                <div>
                <h3>Datos del Libro</h3>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Id Libro</label>
                    <input type="text" name="pkLibroId" value="<%out.print(request.getAttribute("pkLibroId"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Código</label>
                    <input type="text" name="codigoM" value="<%out.print(request.getAttribute("codigoM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Autor</label>
                    <input type="text" name="autorM" value="<%out.print(request.getAttribute("autorM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Edición</label>
                    <input type="text" name="edicionM" value="<%out.print(request.getAttribute("edicionM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Año de publicación</label>
                    <input type="text" name="anioPublicacionM" value="<%out.print(request.getAttribute("anioPublicacionM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Título</label>
                    <input type="text" name="tituloM" value="<%out.print(request.getAttribute("tituloM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Ciudad</label>
                    <input type="text" name="ciudadM" value="<%out.print(request.getAttribute("ciudadM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">País</label>
                    <input type="text" name="paisM" value="<%out.print(request.getAttribute("paisM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Editorial</label>
                    <input type="text" name="editorialM" value="<%out.print(request.getAttribute("editorialM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Registro ISBN</label>
                    <input type="text" name="registroISBNM" value="<%out.print(request.getAttribute("registroISBNM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Nro de páginas</label>
                    <input type="text" name="nroPaginasM" value="<%out.print(request.getAttribute("nroPaginasM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Estado</label>
                    <input type="text" name="nroPaginasM" value="<%out.print(request.getAttribute("estadoM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Nro de ejemplares</label>
                    <input type="text" name="nroEjemplaresM" value="<%out.print(request.getAttribute("nroEjemplaresM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Incluye CD</label>
                    <input type="text" name="nroEjemplaresM" value="<%out.print(request.getAttribute("incluyeCd"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Tipo</label>
                    <input type="text" name="tipoM"  value="<%out.print(request.getAttribute("tipoM"));%>" class="form-control" readonly>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Tiempo de vigencia</label>
                    <input type="text" name="tiempoVigenciaM" value="<%out.print(request.getAttribute("tiempoVigenciaM"));%>" class="form-control" readonly>
                </div>            
            </form>
        </div>      
    </body>
</html>
