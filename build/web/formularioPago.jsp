<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Pago</title>
        <!-- Agrega los enlaces a Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1 class="mt-5">Formulario de Pago</h1>
            <form action="procesarPago.jsp" method="POST" class="mt-4">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                </div>
                <div class="form-group">
                    <label for="tarjeta">Número de Tarjeta:</label>
                    <input type="text" class="form-control" id="tarjeta" name="tarjeta" required>
                </div>
                <div class="form-group">
                    <label for="fecha">Fecha de Vencimiento:</label>
                    <input type="text" class="form-control" id="fecha" name="fecha" placeholder="MM/YY" required>
                </div>
                <div class="form-group">
                    <label for="cvv">CVV:</label>
                    <input type="text" class="form-control" id="cvv" name="cvv" required>
                </div>
                <button type="submit" class="btn btn-primary">Realizar Pago</button>
            </form>
        </div>
    </body>
</html>
