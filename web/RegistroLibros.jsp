<%-- 
    Document   : RegistroLibros
    Created on : 04-sep-2022, 12:43:03
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
                                <a class="nav-link active" href="Listadolibros.jsp">Libros</a>
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

        <div class="slogan distanciatop">REGISTRO LIBRO</div><br>
        <div class="container shadow-lg p-3 mb-5 bg-body p-2 text-dark bg-opacity-25 distanciatop">
            
            <form action="GuardarLibro1" method="post" class="row g-3 ">
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
                <div class="col-md-3">
                    <label class="form-label">Código</label>
                    <input type="text" name="codigoM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Autor</label>
                    <input type="text" name="autorM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Edición</label>
                    <input type="text" name="edicionM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Año de publicación</label>
                    <input type="text" name="anioPublicacionM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Título</label>
                    <input type="text" name="tituloM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Ciudad</label>
                    <input type="text" name="ciudadM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">País</label>
                    <input type="text" name="paisM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Editorial</label>
                    <input type="text" name="editorialM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Registro ISBN</label>
                    <input type="text" name="registroISBNM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Nro de páginas</label>
                    <input type="text" name="nroPaginasM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Estado</label>
                    <select name="estadoM" class="form-select">
                        <option selected disabled value="">Elige...</option>
                        <option value="bueno">Bueno</option>
                        <option value="malo">Malo</option>
                        <option value="regular">Regular</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Nro de ejemplares</label>
                    <input type="text" name="nroEjemplaresM"  class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Incluye CD</label>
                    <select name="incluyeCd" class="form-select">
                        <option selected disabled value="">Elige...</option>
                        <option value="si">Si</option>
                        <option value="no">No</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Tipo</label>
                    <input type="text" name="tipoM" class="form-control">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Tiempo de vigencia</label>
                    <input type="text" name="tiempoVigenciaM" class="form-control">
                </div>
            </form>
        </div>
    </body>
</html>
