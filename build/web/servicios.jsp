
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Link de fontawesome CDN iconos -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Link para CDN FONT AWESOME ICONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">            

        <style>

            body {
                background-image: url("img/nv6.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                overflow-x: hidden;
            }

            .column-content{
                margin-top: -20px;
            }

            .section-description{
                font-size: 10px;
            }
            .section-title{
                font-size: 30px;
                font-weight: bold;
                margin-bottom: 50px;
            }


            .column-content h2{
                font-size: 50px;
                font-weight: bold;
                margin-bottom: 50px;
            }
            .column-content p{
                font-size: 20px;
            }
            .list-group-item{
                font-size: 20px;
              
            }

            .list-group-item i{font-weight: bold; font-size: 10px;}

            .form-label {
                font-weight: bold;
                font-size:18px;
                margin-bottom: 10px;
            }

            .btn {
                width: 30%;
                padding: 20px;
                margin-top: -10px;
                background-color: black;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 20px;
                text-align: center;
            }
            
            .form-control{padding: 15px; font-size: 15px;}
         
            

        </style>



        <title>Contacto</title>
    </head>


    <body>
        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>


        <section id="quienes-somos" class="py-5" style="margin-top:100px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12" style="margin-bottom:50px;">
                        <h2 class="section-title" style='font-size:50px;'>Mantén tus muebles en perfecto estado con nuestros servicios especializados</h2><br>
                        <p class="section-description" style="font-weight: bold; font-size: 30px;">Nuestros servicios incluyen:</p><br>
                        <li class="list-group-item">
                            <i class="fa-sharp fa-solid fa-hammer" style="margin-right: 5px; font-size: 30px; font-weight: bold;"></i> Reparación de muebles dañados:<hr>
                            <p>Desde patas de camas rotas hasta cajones que no abren correctamente, nuestros expertos pueden solucionar cualquier problema.</p>
                  
                            <div class="container" style="">
                              
                                
                            </div><br>
                            

                        </li><br>
                        <li class="list-group-item">
                            <i class="fa-solid fa-pump-soap" style="margin-right: 5px;  font-size: 30px; font-weight: bold;"></i>Limpieza y pulido:<hr>
                            <p>Eliminamos manchas y arañazos, y aplicamos tratamientos protectores para que tus muebles luzcan siempre impecables.</p>
                        </li><br>
                        
                        
                        <div class="container" style="">

                            

                        </div><br>

                        
                        
                        <li class="list-group-item">
                            <i class="fa-solid fa-mattress-pillow" style="margin-right: 5px;  font-size: 30px; font-weight: bold;"></i> Servicios de tapicería:<hr>
                            <p>Renovamos tus muebles tapizados, reemplazando tejidos y materiales desgastados por nuevos y duraderos.</p>
                        </li><br>
                        
                        
                        <div class="container" style="">

                            

                        </div>
                        
                        
                    </div>


                </div>
            </div>
        </section>



        <div class="container " style="background-image: url('img/nv6.jpg');
             background-size: cover;
             background-repeat: no-repeat;
             background-attachment: fixed; ">

                <form id="comentarios-form" action="https://formspree.io/f/mpzvgzga" onsubmit="return validate();" method="POST" style="  margin-bottom: 100px; padding:40px;">
                    <div class="row">

                        <div class="container " style=" margin-bottom:50px; ">
                            <h1 class="section-title" style='font-size:50px;'>Formulario de Datos</h1>
                            <hr>


                        </div>


                        <div class="col-lg-6 mb-5">
                            <small class="form-text text-muted">Nombre</small>
                            <input type="text" class="form-control" name="nombre" required>
                        </div>

                        <div class="col-lg-6 mb-5">
                            <small class="form-text text-muted">Apellido</small>
                            <input type="text" class="form-control" name="apellido"  required>
                        </div>

                        <div class="col-lg-6 mb-5">
                            <small class="form-text text-muted">Teléfono</small>
                            <input type="text" class="form-control" name="telefono"  required>
                        </div>

                        <div class="col-lg-6 mb-5">
                            <small class="form-text text-muted">Correo</small>
                            <input type="email" class="form-control" name="correo" required>
                        </div>

                        <div class="col-lg-12 mb-5">
                            <small class="form-text text-muted">Producto</small>
                            <input type="text" class="form-control" name="producto" required>
                        </div>

                        <div class="col-lg-12 mb-5">
                            <small class="form-text text-muted">Motivo</small>
                            <textarea class="form-control" name="motivo" rows="3" required></textarea>
                        </div>

                        <div class="col-lg-12">
                            <button type="submit" class="btn btn-dark">Enviar Datos</button>



                            <input type="hidden" name="_subject" value="Nuevo comentario recibido">
                            <input type="hidden" name="_next" value="http://localhost:8080/Capri/login.jsp/enviado.jsp">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- codigo para redireccionar a otra pagina -->
        <script>
            document.getElementById('comentarios-form').addEventListener('submit', function(event) {
                event.preventDefault();  // Evita el envío estándar del formulario
                const form = event.target;
                const formData = new FormData(form);

                fetch(form.action, {
                    method: form.method,
                    body: formData,
                    headers: {
                        'Accept': 'application/json'
                    }
                }).then(response => {
                    if (response.ok) {
                        window.location.href = form._next.value;  // Redirige a la página JSP
                    } else {
                        alert("Hubo un problema al enviar el formulario. Inténtalo de nuevo.");
                    }
                }).catch(error => {
                    console.error("Error:", error);
                    alert("Hubo un problema al enviar el formulario. Inténtalo de nuevo.");
                });
            });
            </script>

         <%
            if (request.getMethod().equals("POST")) {
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String telefono = request.getParameter("telefono");
                String correo = request.getParameter("correo");
                String producto = request.getParameter("producto");
                String motivo = request.getParameter("motivo");

                if (nombre != null && !nombre.isEmpty() && apellido != null && !apellido.isEmpty() && telefono != null && !telefono.isEmpty() && correo != null && !correo.isEmpty() && producto != null && !producto.isEmpty() && motivo != null && !motivo.isEmpty()) {
                    try {
                        // Aquí debes incluir tu código de conexión a la base de datos y la inserción
                        // Reemplaza el siguiente código con tu lógica de base de datos
                        Class.forName("com.mysql.jdbc.Driver"); // Reemplaza "nombre_de_tu_driver" por el nombre de tu driver JDBC
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", ""); // Reemplaza los placeholders por tu URL, usuario y contraseña de la base de datos
                        PreparedStatement st = conexion.prepareStatement("INSERT INTO servicio (nombre, apellido, telefono, correo, producto, motivo) VALUES (?,?,?,?,?,?)");
                        st.setString(1, nombre);
                        st.setString(2, apellido);
                        st.setString(3, telefono);
                        st.setString(4, correo);
                        st.setString(5, producto);
                        st.setString(6, motivo);
                        st.executeUpdate();
                        st.close();
                        conexion.close();
                        response.sendRedirect("enviado.jsp");
                    } catch (Exception e) {
                        e.printStackTrace(); // Manejar o registrar el error apropiadamente
                        out.println("<p>Error al procesar el formulario.</p>");
                    }
                } else {
                    out.println("<p>Por favor, completa todos los campos.</p>");
                }
            }
        %>

        
        
        <script>
                   function validate() {
                       var email = document.getElementById("email").value;
                       var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                       if (!emailRegex.test(email)) {
                           Swal.fire("Error", "Por favor, introduce una dirección de correo electrónico válida.", "error");
                           return false;
                       }
                       return true;
                   }
        </script>





        <!-- Footer -->
        <%@ include file="footer.jsp" %>
    </body>
</html>
