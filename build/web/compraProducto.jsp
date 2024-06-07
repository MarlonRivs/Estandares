
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Compra</title>
        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Link para CDN FONT AWESOME ICONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <style>
            body {
                background-image: url("img/nv1.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                overflow-x: hidden;

                
                
                
            }
            .form-container {
                margin-top: 200px;
                max-width: 1200px;
                margin-left: auto;
                margin-right: auto;
                padding: 70px;
                box-shadow: 2px 4px 8px 4px rgba(0, 0, 0, 0.4);
                border-radius: 10px;
                background-color: #ffffff;
                margin-bottom: 200px;
            }
            .form-header {
                text-align: center;
                margin-bottom: 20px;
                color:black;
            }
            .form-header h2 {
                font-weight: bold;
                color: black;
            }
            .form-row {
                margin-bottom: 15px;
                color:white;
            }
            .form-label {
                font-size: 1.2em;
                color:black;
            }
            
            .form-title-row{
                color:black;
            }
            
            .form-input {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                margin-bottom: 5px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }
            .btn-submit {
                background-color: white;
                color: black;
                font-size: 25px;
                font-weight: bold;
                width: 100%;
                padding: 20px;
                border: none;
                border-radius: 5px;
            }
            .btn-submit:hover {
                transition: box-shadow 0.4s ease;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            }
        </style>
    </head>
    <body>
        
        
        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>
        
        <section>
            <div class="container form-container" style=" background-color: white;
                 ">
                <form action="procesar_compra.jsp" method="POST" onsubmit="return validarFormulario()">
                    <div class="form-register-with-email">
                        <div class="form-title-row">
                            <br><h3>Información del Cliente</h3>
                        </div>
                        <hr><br>
                        
            
                            <div class="row">
                                <div class="col-md-6 form-row">
                                    <label for="nombre" class="form-label" >Nombre</label>
                                    <input type="text" class="form-input" id="nombre" name="nombre" placeholder="Ingresar nombre" required>
                                </div>
                                <div class="col-md-6 form-row">
                                    <label for="apellido" class="form-label">Apellido</label>
                                    <input type="text" class="form-input" id="apellido" name="apellido" placeholder="Ingresar apellido" required>
                                </div>
                            </div>
              
                        
                        
                        <div class="row">
                            <div class="col-md-6 form-row">
                                <label for="email" class="form-label">Correo Electrónico</label>
                                <input type="email" class="form-input" id="email" name="email" placeholder="Ingresar correo" required>
                            </div>
                            <div class="col-md-6 form-row">
                                <label for="telefono" class="form-label">Teléfono</label>
                                <input type="tel" class="form-input" id="telefono" name="telefono" placeholder="Ingresar teléfono" required>
                            </div>
                        </div>
                        <div class="form-title-row">
                            <br><h3>Dirección de Envío</h3>
                        </div>
                        <hr><br>
                        <div class="row">
                            <div class="col-md-12 form-row">
                                <label for="pais" class="form-label">País</label>
                                <select id="pais" name="pais" class="form-input" required>
                                    <option value="">Seleccionar país</option>
                                    <option value="El Salvador">El Salvador</option>
                                    <option value="Honduras">Honduras</option>
                                    <option value="Guatemala">Guatemala</option>
                                    <option value="Nicaragua">Nicaragua</option>

                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-row">
                                <label for="direccion" class="form-label">Dirección</label>
                                <input type="text" class="form-input" id="direccion" name="direccion" placeholder="Ingresar dirección" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-row">
                                <label for="ciudad" class="form-label">Ciudad</label>
                                <input type="text" class="form-input" id="ciudad" name="ciudad" placeholder="Ingresar ciudad" required>
                            </div>
                            <div class="col-md-6 form-row">
                                <label for="estado" class="form-label">Estado</label>
                                <input type="text" class="form-input" id="estado" name="estado" placeholder="Ingresar estado" required>
                            </div>
                        </div>
                       
                        <div class="form-title-row">
                            <br><h3>Detalles del Producto</h3>
                        </div>
                        <hr><br>
                        <div class="row">
                            <div class="col-md-12 form-row">
                                <label for="producto" class="form-label">Producto Seleccionado</label>
                                <input type="text" class="form-input" id="producto" name="producto" value="<%= request.getParameter("nombre")%>" readonly>
                            </div>
                        </div>
                            
                    
                            <div class="row">
                                
                                <div class="col-md-6 form-row">
                                    <label for="cantidad" class="form-label">Cantidad</label>
                                    <input type="number" class="form-input" id="cantidad" name="cantidad" min="1" value="1" required>
                                </div>
                                <div class="col-md-6 form-row">
                                    <label for="precio_total" class="form-label">Precio Total</label>
                                    <input type="text" class="form-input" id="precio_total" name="precio_total" value="<%= request.getParameter("precio")%>"  readonly>
                                </div>
                            </div>
                        <div class="form-title-row">
                            <br><h3>Detalles de Pago</h3>
                        </div>
                        <hr><br>
                        <div class="row">
                            <div class="col-md-6 form-row">
                                <label for="tarjeta" class="form-label">Número de Tarjeta</label>
                                <input type="text" class="form-input" id="tarjeta" name="tarjeta" placeholder="Ingresar número de tarjeta" required>
                            </div>
                            <div class="col-md-3 form-row">
                                <label for="expiracion" class="form-label">Fecha de Expiración</label>
                                <input type="month" class="form-input" id="expiracion" name="expiracion" required>
                            </div>
                            <div class="col-md-3 form-row">
                                <label for="cvv" class="form-label">CVV</label>
                                <input type="text" class="form-input" id="cvv" name="cvv" placeholder="CVV" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <br><br><input type="submit" class="btn-submit" value="Completar Compra">
                        </div>
                    </div>
                </form>
            </div>
        </section>
                            
                            
                                <!-- Footer -->
                                <%@ include file="footer.jsp" %>                       
              
                                
                                
                                <script>
                                    document.getElementById('cantidad').addEventListener('input', function() {
                                        var cantidad = parseInt(this.value);
                                        var precioUnitario = parseFloat('<%= request.getParameter("precio")%>');
                                        var precioTotal = cantidad * precioUnitario;
                                        document.getElementById('precio_total').value = precioTotal.toFixed(2);
                                    });
                                </script>                      
                                
                                
<script>
    function validarFormulario() {
        var nombre = document.getElementById('nombre').value;
        var apellido = document.getElementById('apellido').value;
        var email = document.getElementById('email').value;
        var telefono = document.getElementById('telefono').value;
        var tarjeta = document.getElementById('tarjeta').value;
        var cvv = document.getElementById('cvv').value;

        // Validación de campos no vacíos
        if (nombre.trim() === '' || apellido.trim() === '' || email.trim() === '' || telefono.trim() === '' || tarjeta.trim() === '' || cvv.trim() === '') {
            alert('Por favor, completa todos los campos.');
            return false; // Evita que se envíe el formulario
        }

        // Validación del formato de email
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert('Por favor, ingresa un correo electrónico válido.');
            return false; // Evita que se envíe el formulario
        }

        // Validación del número de teléfono
        var telefonoRegex = /^\d{8}$/;
        if (!telefonoRegex.test(telefono)) {
            alert('Por favor, ingresa un número de teléfono válido.');
            return false; // Evita que se envíe el formulario
        }

        // Validación del número de tarjeta
        var tarjetaRegex = /^\d{16}$/;
        if (!tarjetaRegex.test(tarjeta)) {
            alert('Por favor, ingresa un número de tarjeta válido.');
            return false; // Evita que se envíe el formulario
        }
        
        // Validación del número de cvv
        var cvvRegex = /^\d{3}$/;
        if (!cvvRegex.test(cvv)) {
            alert('Por favor, ingresa un número de cvv válido.');
            return false; // Evita que se envíe el formulario
        }
        
        
        // Si todas las validaciones son exitosas, se enviará el formulario
        return true;
    }
</script>
                                
                            
    </body>
    
</html>
