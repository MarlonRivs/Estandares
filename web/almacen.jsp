<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Proceso de Pago</title>

        <!-- Link de fontawesome CDN iconos -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Link para CDN FONT AWESOME ICONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <!-- Carga la biblioteca ScrollReveal -->
        <script src="https://unpkg.com/scrollreveal"></script>

        <!-- Carga la biblioteca Intersection Observer -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/intersection-observer/2.0.0/intersection-observer.min.js"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
        <title>Proceso de Pago</title>
        <style>
            
            body{
                overflow-x: hidden;
            }
     
            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"],
            input[type="email"] {
                width: calc(100% - 20px);
                padding: 8px;
                margin-bottom: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 10px;
            }

            button[type="submit"] {
                
                background-color: #007bff;
                color: #fff;
                padding: 20px 30px ;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                display: block;
                
                width: 40%;
        
            }
            
            .container{
                margin-top: -120px;
                padding: 80px;
            }

            button:hover {
                background-color: gray;
            }
            
            button{
                margin-top: 20px;
            }
            
            
            table img{
                
                max-width: 100px;
                height: auto;
                
            }
            
            
        </style>
    </head>
    
        
        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>
        

        <div class="container col-md-12">

            <br><br><br><br><br><br><br><br><br><h1>Detalles del Producto</h1><hr><br>
            <div style="overflow-x:auto;">
                <table class="table table-responsive">
                    <tr>
                        <th style="padding:20px;">Nombre</th>
                        <th style="padding:20px;">Descripción</th>
                   
                        <th style="padding:20px;">Cantidad</th>
                        <th style="padding:20px;">Precio</th>
                    </tr>
                    <tr>
                        <%  request.setCharacterEncoding("UTF-8");
                              response.setCharacterEncoding("UTF-8");%>
                        <td style="padding:20px;" ><%= request.getParameter("nombre")%></td>
                        <td style="padding:20px;" ><%= request.getParameter("descripcion")%></td>
                       
                        <td style="padding:20px;" > <%= request.getParameter("cantidad")%></td>
                        <td style="padding:20px;" >$<%= request.getParameter("precioTotal")%></td>
                    </tr>
                </table>
            </div>

        </div>   
                    
                    
                    
                    
<%
                            Connection conexion = null;
                            PreparedStatement st = null;
                            ResultSet rs = null;

                            try {
                            
                            
                                  request.setCharacterEncoding("UTF-8");
                                  response.setCharacterEncoding("UTF-8");

                                Class.forName("com.mysql.jdbc.Driver");
                                conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", "");

                                // Obtener datos del usuario
                                String id_registro = (String) session.getAttribute("id_registro");
                                if (id_registro != null) {
                                    String sql = "SELECT firstname, lastname, departamento, direccion, telefono, email FROM registro WHERE id_registro = ?";
                                    st = conexion.prepareStatement(sql);
                                    st.setString(1, id_registro);
                                    rs = st.executeQuery();

                                    // Recorre los campos del usuario y los valida
                                    if (rs.next()) {
                                        String nombre = rs.getString("firstname");
                                        String apellido = rs.getString("lastname");
                                        String departamento = rs.getString("departamento");
                                        String direccion = rs.getString("direccion");
                                        String telefono = rs.getString("telefono");
                                        String correo = rs.getString("email");
%>     
                    
                    
                    
        
        <div class="container col-md-12">
            <!-- Tu estructura HTML aquí -->
         
            <form  method="post">
                

                
                <div class="row col-md-12">
                    
                    <div class="col-md-6">
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" value=" <%=nombre%>" placeholder="Ingrese sus  nombres" required><br><br>
                    </div>
                    
                    <div class="col-md-6">    
                        <label for="apellido">Apellido:</label>
                        <input type="text" id="apellido" name="apellido" value=" <%=apellido%>" placeholder="Ingrese sus  apellidos" required><br><br>
                    </div>
                    
                    <div class="col-md-6">
                        <label for="departamento" style="margin-bottom:16px;">Departamento:</label>
                         <input type="text" id="departamentoo" name="departamento" value=" <%=departamento%>" placeholder="Ingrese su departamento" required><br><br>
                    </div>

                    
                    <div class="col-md-6">   
                        <label for="direccion">Dirección:</label>
                        <input type="text" id="direccion" name="direccion" value=" <%=direccion%>" placeholder="Ingrese dirección de ubicación" required><br><br>
                    </div>
                    
                    <div class="col-md-6">
                        <label style='margin-bottom: 17px;' for="celular">Celular:</label>
                        <div class="input-group">
                            <span class="input-group-text">+503</span>
                            <input type="tel" id="celular" name="celular" value=" <%=telefono%>" class="form-control" placeholder="Ingrese su número de celular" required>
                        </div>
                        <small class="form-text text-muted">El número debe contener 8 dígitos.</small>
                    </div>

                    
                    <div class="col-md-6">   
                        <label for="correo">Correo Electrónico:</label>
                        <input type="email" id="correo" name="correo" value=" <%=correo%>" placeholder="Ingrese su correo electrónico" required><br><br>
                    </div>
                    
                    <div class="col-md-3">  <br>
                        <label for="nombre_tarjeta">Nombre en la Tarjeta:</label>
                        <input type="text" id="nombre_tarjeta" name="nombre_tarjeta" placeholder="Nombre de Asociado" required><br><br>
                    </div>
                    
                    <div class="col-md-3">  <br>
                        <label for="numero_tarjeta">Número de Tarjeta:</label>
                        <input type="text" id="numero_tarjeta" name="numero_tarjeta" placeholder="0000-0000-0000-0000" required><br><br>
                    </div>
                    
                    <div class="col-md-3"> <br>
                        <label style="margin-bottom:16px;" for="fecha_expiracion_mes">Fecha de Expiración:</label>
                        <div class="d-flex">
                            <select style="padding: 7px;" id="fecha_expiracion_mes" name="fecha_expiracion_mes" class="form-control me-2" required>
                                <option value="" disabled selected>Mes</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <select id="fecha_expiracion_ano" name="fecha_expiracion_ano" class="form-control" required>
                                <option value="" disabled selected>Año</option>
                                <option value="2024">2024</option>
                                <option value="2025">2025</option>
                                <option value="2026">2026</option>
                                <option value="2027">2027</option>
                                <option value="2028">2028</option>
                                <option value="2029">2029</option>
                                <option value="2030">2030</option>
                            </select>
                        </div>
                    </div>

                    
                    <div class="col-md-3">  <br>
                        <label for="codigo_seguridad">Código de Seguridad (CVV):</label>
                        <input type="text" id="codigo_seguridad" name="codigo_seguridad" placeholder="*" required><br><br><br>
                    </div><br><hr>
                    
                    <button class="button bg-dark" id="realizarPagoBtn" style="color:white; padding:30px; margin-top: 20px; ">Realizar Pago</button>
                    <button class="button bg-danger" id="cancelarCompraBtn" style="color:white; padding: 30px; margin-top: 20px; ">Cancelar Compra</button>
                
                </div>
                    
            </form>
        
        </div><br><br><br>
        
        <%
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Cerrar la conexión y liberar recursos
                if (rs != null) {
                    try {
                        rs.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (st != null) {
                    try {
                        st.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (conexion != null) {
                    try {
                        conexion.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
        
        
        
        <script>
            
        function validarEmail(email) {
           // valida que se ingrese un correo valido
           var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
           return regex.test(email);
       }

       function validarFormulario() {
           var emailInput = document.getElementById('correo');
           var email = emailInput.value;

           if (!validarEmail(email)) {
               alert('Por favor, introduce un correo electrónico válido.');
               emailInput.focus();
               return false;
           }

           return true;
       }
        </script>
        
        
        <script>
                document.getElementById('realizarPagoBtn').addEventListener('click', function(event) {
                    event.preventDefault();
                    window.location.href = 'procesar_pago.jsp';
                });

                document.getElementById('cancelarCompraBtn').addEventListener('click', function(event) {
                    event.preventDefault();
                    window.location.href = 'compraCancelada.jsp';
                });
        </script>
        
        
        <script>
        function validarInput1(e1) {
            var keynum = window.event ? window.event.keyCode : e1.which;

            // este es para que te deje borrar y retroceder
            if (keynum == 8 || keynum == 46) return true;

            //este valor obtiene el elemnto de entrada(en este caso es del input del numero de la tarjeta)
            var elemento = e1.target || e1.srcElement;

            // este solo verifica que hayan 16 caracteres
            if (elemento.value.length >= 16) {
                e1.preventDefault();
                Swal.fire({
                    icon: 'error',
                    title: 'Numero de tarjeta invalido',
                    text: 'El numero de tarjeta no puede tener más de 16 caracteres.',
                });
                return false;
            }

            // con esta permitis solo numeros
            if (!/\d/.test(String.fromCharCode(keynum))) {
                Swal.fire({
                    icon: 'error',
                    title: 'Entrada invalida',
                    text: 'Solo se permiten numeros ',
                });
                e1.preventDefault();

                return false;
            }

            return true;
        }
        //vaida que el formulario actual tenga los 16 caracteres creo 
        function validarFormulario1(elemento) {
            var numero = elemento.value;

            return numero.length === 16;
        }

        // esto asigna directamente el obkeypress al input. Solo cambia el nombre del input si que esta en comillas
        document.getElementById('numero_tarjeta').onkeypress = validarInput1;

        // este no me quedo muy claro para que sirve xd
        document.getElementById('numero_tarjeta').onblur = function() {
            validarFormulario1(this);
        };
        
        
        
        
        
        function validarInput2(e) {
            var keynum2 = window.event ? window.event.keyCode : e.which;

            if (keynum2 == 8 || keynum2 == 46) return true;

            var elemento2 = e.target || e.srcElement;

            // este solo verifica que hayan 3 caracteres
            if (elemento2.value.length >= 3) {
                e.preventDefault();
                Swal.fire({
                    icon: 'error',
                    title: 'Código de seguridad inválido',
                    text: 'El contenido no puede tener mas de 3 caracteres.',
                });
                return false;
            }

            // con esta permitis solo numeros
            if (!/\d/.test(String.fromCharCode(keynum2))) {
                
                e.preventDefault();
                Swal.fire({
                    icon: 'error',
                    title: 'Entrada inválida',
                    text: 'Solo se permiten numeros en este campo',
                });
                return false;
            }

            return true;
        }

        function validarFormulario2(elemento2) {
            var numero2 = elemento2.value;

            return numero2.length === 3;
        }

        document.getElementById('codigo_seguridad').onkeypress = validarInput2;

        document.getElementById('codigo_seguridad').onblur = function() {
            validarFormulario2(this);
        };


        </script>

        
        
        
        
        
        
        

    <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="footer.jsp" %>