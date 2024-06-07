<%-- 
    Document   : productoVista
    Created on : 31 may 2024, 14:24:37
    Author     : felip
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Principal</title>

        <!-- Link de fontawesome CDN iconos -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Carga la biblioteca ScrollReveal -->
        <script src="https://unpkg.com/scrollreveal"></script>

        <!-- Carga la biblioteca Intersection Observer -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/intersection-observer/2.0.0/intersection-observer.min.js"></script>

        <style>
            .product-card .product-img {
                width: 100%;
                height: auto;
                border-radius: 5px;
                padding: 60px;
                transition: transform 0.5s ease;
            }
            .product-card .product-img:hover {
                transform: scale(1.1);
            }

            body{
                background-image: url("img/nv2.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                overflow-x: hidden;
            }
        </style>
    </head>

    <%@ page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.DecimalFormat" %>
    <%@ page import="java.text.NumberFormat" %>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Obtener los parámetros enviados desde el formulario del producto
        String idDestacados = request.getParameter("id_limpieza");
        String nombre = request.getParameter("nombre");
        double precio = Double.parseDouble(request.getParameter("precio"));
        String descripcion = request.getParameter("descripcion");
        String foto = request.getParameter("foto");

        // Crear un objeto Map para almacenar los detalles del producto
        Map<String, Object> producto = new HashMap<>();
        producto.put("id_limpieza", idDestacados);
        producto.put("nombre", nombre);
        producto.put("precio", precio);
        producto.put("descripcion", descripcion);
        producto.put("foto", foto);

        // Obtener el carrito de la sesión o crear uno nuevo si no existe
        List<Map<String, Object>> carrito = (List<Map<String, Object>>) session.getAttribute("carrito");
        if (carrito == null) {
            carrito = new ArrayList<>();
        }

        // Agregar el producto al carrito
        carrito.add(producto);

        // Actualizar el carrito en la sesión
        session.setAttribute("carrito", carrito);
    %>

    <body>

        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>

        <div class="card container" style="margin-bottom:-20px; padding: -10px; margin-top: 150px; ">
            <div class="row mt-4">
                <div class="col-md-12" style="padding:10px;" id="producto_<%= request.getParameter("id_limpieza")%>">
                    <div class="product-card">
                        <div class="row">
                            <!-- Contenido del producto a la izquierda -->
                            <div class="col-md-6" style="padding:80px;">
                                <h3 class=""><%= request.getParameter("nombre")%></h3><hr>
                                <br><p class=""><%= request.getParameter("descripcion")%></p>
                                <br><p id="precio_<%= request.getParameter("id_limpieza")%>">Precio: $<span class="precio-unitario"><%= request.getParameter("precio")%></span></p>
                                <div class="mb-3">
                                    <br><label for="cantidad_<%= request.getParameter("id_limpieza")%>" class="form-label">Cantidad:</label><br>
                                    <br><input type="number" class="form-control cantidad" id="cantidad_<%= request.getParameter("id_limpieza")%>"
                                               name="cantidad" value="0" min="0" data-id="<%= request.getParameter("id_limpieza")%>">

                                </div>
                                <div class="mb-3">


                                </div>
                                <!-- Botón para reenviar el card a otro JSP -->
                                <!-- Botón para reenviar el card a otro JSP -->
                                <form action="almacen.jsp" method="post">
                                    <!-- Mantenemos los inputs originales -->
                                    <input type="hidden" name="id_limpieza" value="<%= request.getParameter("id_limpieza")%>">
                                    <input type="hidden" name="nombre" value="<%= request.getParameter("nombre")%>">
                                    <input type="hidden" name="descripcion" value="<%= request.getParameter("descripcion")%>">
                                    <input type="hidden" name="foto" value="<%= request.getParameter("foto")%>">         
                                    <!-- Agregamos los valores de cantidad y precio total desde los spans -->
                                    <input type="hidden" name="cantidad" id="cantidadHidden">
                                    <input type="hidden" name="precioTotal" id="precioTotalHidden">
                                    <!-- Botón de envío -->
                                    <hr><button type="submit" onclick="return validarCantidad()" class="btn btn-dark">Agregar al carrito</button>
                                </form>

                            </div>
                            <!-- Imagen del producto a la derecha -->
                            <div class="col-md-6" style="padding:30px;">
                                <img class="product-img" src="<%= request.getParameter("foto")%>" alt="Product Image">
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Script de JavaScript para obtener el valor predeterminado del precio -->
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Obtener el precio predeterminado del campo oculto
                var precioPredeterminado = document.getElementById("precioHidden").value;

                // Obtener el span donde se mostrará el precio total
                var precioTotalSpan = document.getElementById("precioTotal2");

                // Verificar si el precio predeterminado no está vacío o nulo
                if (precioPredeterminado && precioPredeterminado.trim() !== "") {
                    // Si el precio predeterminado no está vacío, mostrarlo en el span
                    precioTotalSpan.innerText = precioPredeterminado;
                } else {
                    // Si el precio predeterminado está vacío, obtenerlo del parámetro de solicitud
                    var precioRequest = "<%= request.getParameter("precio")%>";
                    // Mostrar el precio obtenido del parámetro de solicitud en el span
                    precioTotalSpan.innerText = precioRequest ? precioRequest : "0.00";
                }
            });
        </script>



        <!-- Card para mostrar la cantidad y el precio total -->
        <div class="card container" style="padding-top: 10px; margin-top: -70px; margin-bottom: 100px; background-color: black; color:white;">
            <!-- Etiqueta para mostrar el precio total -->
            <div class="row col-md-6" style="margin-top:10px;">
                <div class="col-md-6 mb-3">
                    <label class="form-label">Total Final a pagar: $</label>
                    <span class="" id="precioTotal2" readonly></span>
                    <!-- Input hidden para almacenar el precio predeterminado -->
                    <input type="hidden" id="precioHidden" value="<%= request.getParameter("precio")%>">
                </div>
                <!-- Etiqueta para mostrar la cantidad -->
                <div class="col-md-6 mb-3">
                    <label class="form-label">Cantidad del Producto Seleccionado:</label>
                    <span class="" id="canti" readonly></span>
                    <!-- Input hidden para almacenar la cantidad predeterminada -->
                    <input type="hidden" id="cantidadHidden" value="<%= request.getParameter("cantidad")%>">
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <script>
            function validarCantidad() {
                // Obtener el valor de la cantidad ingresada
                var cantidad = document.getElementById("cantidad_<%= request.getParameter("id_limpieza")%>").value;

                // Convertir la cantidad a un número entero
                cantidad = parseInt(cantidad);

                // Verificar si la cantidad es cero
                if (cantidad === 0) {
                    // Mostrar un mensaje de error con SweetAlert
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Establezca la cantidad del producto.'
                    });
                    // Evitar que se envíe el formulario
                    return false;
                }

                // Si la cantidad no es cero, permitir que se envíe el formulario
                return true;
            }
        </script>




        <!-- Script de JavaScript para manejar la lógica del precio total -->
        <script>

            document.addEventListener("DOMContentLoaded", function () {
                var cantidadInputs = document.getElementsByClassName("cantidad");
                for (var i = 0; i < cantidadInputs.length; i++) {
                    cantidadInputs[i].addEventListener("change", function () {
                        var id = this.getAttribute("data-id");
                        var cantidad = parseInt(this.value);
                        var precioUnitario = parseFloat(document.getElementById("precio_" + id).innerText.split("$")[1]);
                        var precioTotal = cantidad * precioUnitario;
                        // Mostrar el precio total en el span
                        document.getElementById("precioTotal2").innerText = precioTotal.toFixed(1);
                        // Mostrar la cantidad en el span
                        document.getElementById("canti").innerText = cantidad.toFixed(0);

                        // Actualizar los input hidden
                        document.getElementById("cantidadHidden").value = cantidad;
                        document.getElementById("precioTotalHidden").value = precioTotal.toFixed(2);
                    });
                }
            });


        </script>    






        <!-- INCLUCION DE footer -->
        <%@ include file="footer.jsp" %>
    </body>
</html>
