<%-- 
    Document   : Inicio
    Created on : 03-sep-2022, 2:06:58
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
                                <a class="nav-link active" href="Inicio.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ListadoUsuarios.jsp">Usuarios</a>
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

        <div class="slogan distanciatop">CONTENIDO</div>
        <div class="container">

            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="2000">
                        <img src="VISTA/IMG/imgcarousel1.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="VISTA/IMG/imgcarousel2.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="VISTA/IMG/imgcarousel3.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
        </div>
        <div class="slogan align-content-center">Hay grandes libros en el mundo y grandes mundos en los libros</div>
    </div>
</body>
</html>
