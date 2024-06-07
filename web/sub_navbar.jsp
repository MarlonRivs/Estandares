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
                background-color: black;
                
                box-shadow: 0 -5px 15px rgba(50, 50, 50, 0.8);


            }

            .container-fluid img {
                max-width: 75px;
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
                <a class="navbar-brand" href="principal.jsp"><img src="img/2f.png" alt="Logo"></a>
                <button class="navbar-toggler bg-white " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon bg-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active " aria-current="page" href="catalogos.jsp"  style=" font-size: 30px; color:white;">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Informacion.jsp"  style=" font-size: 30px; color:white; ">Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="servicios.jsp" style=" font-size: 30px; color:white; ">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="correo.jsp" style=" font-size: 30px; color:white; ">Contactanos</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style=" margin-top: 10px; font-size: 20px; color:white;">
                                <% if (session.getAttribute("registro") != null) {%>
                                Sesión: <%= session.getAttribute("registro")%>
                                <% } else { %>
                                Sesión
                                <% } %>
                            </a>
                          
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
