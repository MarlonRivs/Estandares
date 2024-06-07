<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Carrito</title>

        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

        <!-- Link para CDN FONT AWESOME ICONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            /* Personaliza estilos si es necesario */
            .product-card {
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 10px;
                margin: 10px;
            }
            .product-img {
                width: 100%;
                height: auto;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>

        <div class="container" style="margin-bottom:200px;">
            <h1 class="" style="margin-top:200px;">Carrito de Compras</h1>
            <div class="row mt-4">
                <%
                    ArrayList<Map<String, Object>> carrito = (ArrayList<Map<String, Object>>) session.getAttribute("carrito");
                    if (carrito != null && !carrito.isEmpty()) {
                        for (Map<String, Object> producto : carrito) {
                %>
                <div class="col-md-4">
                    <div class="product-card">
                        <img class="product-img" src="<%= producto.get("foto")%>" alt="Product Image">
                        <h3 class=""><%= producto.get("nombre")%></h3>
                        <p id="precio_<%= producto.get("id_destacados")%>">Precio: $<%= producto.get("precio")%></p>
                        <div class="mb-3">
                            <label for="cantidad_<%= producto.get("id_destacados")%>" class="form-label">Cantidad:</label>
                            <input type="number" class="form-control cantidad" id="cantidad_<%= producto.get("id_destacados")%>" name="cantidad" value="1" min="1">
                        </div>
                        <div class="mb-3">
                            <label for="precioTotal_<%= producto.get("id_destacados")%>" class="form-label">Precio Total:</label>
                            <input type="text" class="form-control precio-total" id="precioTotal_<%= producto.get("id_destacados")%>" name="precioTotal" value="<%= producto.get("precio")%>" readonly>
                        </div>
                        <!-- Aquí puedes agregar más detalles del producto si lo necesitas -->
                    </div>
                </div>
                <%
                    }
                } else {
                %>
                <div class="col">
                    <p>No hay productos en el carrito</p>
                </div>
                <%
                    }
                %>
            </div>
            <div class="row">
                <div class="col">
                    <button type="button" class="btn btn-primary" onclick="recalcularTotal()">Recalcular Total</button>
                    <h4>Total: $<span id="total">0.00</span></h4>
                </div>
            </div>
        </div>

        <!-- INCLUCION FOOTER -->
        <%@ include file="footer.jsp" %>

        <script>
            function recalcularTotal() {
                var total = 0;
                var productos = document.querySelectorAll('.cantidad');
                productos.forEach(function (producto) {
                    var id = producto.id.split("_")[1];
                    var cantidad = parseInt(producto.value);
                    var precioUnitario = parseFloat(document.getElementById('precio_' + id).innerText.replace('$', ''));
                    var precioTotal = cantidad * precioUnitario;
                    total += precioTotal;
                    document.getElementById('precioTotal_' + id).value = precioTotal.toFixed(2);
                });
                document.getElementById('total').innerText = total.toFixed(2);
            }
        </script>
    </body>
</html>
