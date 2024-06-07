<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Compra Cancelada</title>
        <!-- Enlace a Bootstrap CSS para estilos bonitos -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background-color: #f8f9fa;
                font-family: 'Arial', sans-serif;
                overflow-x: hidden;
            }
            .cancel-container {
                text-align: center;
                background: #fff;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .cancel-container h1 {
                color: green;
                font-size: 2.5em;
                margin-bottom: 20px;
            }
            .cancel-container p {
                font-size: 1.2em;
                color: #6c757d;
                margin-bottom: 30px;
            }
            .cancel-container a {
                text-decoration: none;
                color: #fff;
            }
            .cancel-container .btn {


                font-size: 1.1em;
                padding: 10px 20px;
            }
            .cancel-container .btn:hover {


            }
        </style>
    </head>
    <body>
        <div class="cancel-container">
            <h1>Tus datos han sido enviado con éxito</h1>
            <a href="principal.jsp" class="btn btn-dark">Volver al Inicio</a>
        </div>

        <!-- Enlace a Bootstrap JS y dependencias de Popper.js -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybBY4PvQqGn7h95HYtCU+qgEV9IVBflPXQGI5lUw/xJLYYoS2" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cu1O8r6j6cW/gHjrK6ErBceNcF64vHRH60zEdDne8T4Zj9u8KJPd2atsyokJKCKt" crossorigin="anonymous"></script>
    </body>
</html>
