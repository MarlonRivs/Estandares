<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Main</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .navbar {
                font-size: 22px;
                font-weight: bold;
                display: block;
                align-content: center;
                background-image: url("img/bedf2.jpg");
                background-size: cover;
                background-repeat: no-repeat;          
                background-attachment: fixed; 
            
           

            }

            .container-fluid img {
                max-width: 100px;
            }

            .dropdown-menu {
                color: black;
            }
            .dropdown-item {
                color: black;
            }

            .navbar-nav {
                display: flex;
                justify-content: center;
                width: 100%;
            }

            .navbar-nav .nav-item {
                margin-left: 20px;
                margin-right: 10px;
                transition: transform 0.3s ease;
               
            }

            .nav-item:hover {
                transform: scale(1.1);
            }

            .navbar-brand {
                margin-right: auto;
            }

            .collapse-navbar-collapse {
                display: flex;
                justify-content: center;
                width: 100%;
            }
            
            
            
            
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="principal.jsp"><img style="max-width: 100px; " src="img/1f.png" alt="Logo"></a>
                <button class="navbar-toggler bg-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon "></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active " aria-current="page" href="catalogos.jsp"  style=" font-size: 30px; color:white; text-shadow: 2px 2px 4px black;">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Informacion.jsp"  style=" font-size: 30px; color:white; text-shadow: 2px 2px 4px black;">Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="servicios.jsp" style=" font-size: 30px; color:white; text-shadow: 2px 2px 4px black;">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="correo.jsp" style=" font-size: 30px; color:white; text-shadow: 2px 2px 4px black;">Contactanos</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style=" margin-top: 10px; font-size: 20px; color:#6D6D68; ">
                                <% if (session.getAttribute("registro") != null) {%>
                                Sesión: <%= session.getAttribute("registro")%>
                                <% } else { %>
                                Sesión
                                <% } %>
                            </a>
                            <ul class="dropdown-menu bg-transparent" aria-labelledby="navbarDropdown">
                                <% if (session.getAttribute("registro") != null) { %>
                                <!-- Si la sesión está iniciada, mostrar un enlace para cerrar sesión -->
                                <li><a class="dropdown-item" style="color:black; background-color: transparent"  href="cerrarSesion.jsp">Cerrar sesión</a></li>
                                    <% } else { %>
                                <!-- Si la sesión no está iniciada, mostrar enlaces para iniciar sesión y registrarse -->
                                <li><a class="dropdown-item" style="color:black; background-color: transparent"  href="login.jsp">Iniciar sesión</a></li>
                                <li><a class="dropdown-item" style="color:black; background-color: transparent"  href="registro.jsp">Registrarse</a></li>
                                    <% }%>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <!-- Bootstrap JS and Popper.js -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
