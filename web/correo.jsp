<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="es">
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

            #comentarios {
                
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.6);
                max-width: 500px;
                width: 100%;
                margin-bottom: 100px;
                margin-top: 30px;
                background-image: url("img/nv6.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed; 
                margin-top: 200px;
        
              
            }

            .form-title-row h3 {
                text-align: center;
                color: #333;
            }

            .form-row {
                margin-bottom: 15px;
            }

            .form-row label {
                display: block;
                margin-bottom: 25px;
                color: #333;
            
            }

            .form-row input[type="email"],
            .form-row textarea {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
         
                background-color: transparent;
                
            }

            .form-row input[type="submit"] {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 5px;
                background-color: #000;
                color: #fff;
                font-size: 16px;
                cursor: pointer;

            }
            
            .form-row span{margin-bottom: 20px;}

            .form-row input[type="submit"]:hover {
                background-color: #333;
            }

            .form-log-in-with-existing {
                display: block;
                text-align: center;
                margin-top: 20px;
                color: #000;
                text-decoration: none;
            }

            .form-log-in-with-existing:hover {
                text-decoration: underline;
            }

            .social-icons {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
            }

            .social-icons a {
                margin: 0 10px;
                color: black;
                font-size: 40px;
                text-decoration: none;
            }

            .social-icons a:hover {
                color: black;
            }
        </style>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        
        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>
        

        
        <section>
            <div class="container" id='comentarios'>
                
                <div class="row">
                
                    <div class='col-md-12'>
                
                        <form id="comentarios-form" class="form-register" action="https://formspree.io/f/mpzvgzga" method="POST">
                            <div class="form-register-with-email">
                                <div class="form-title-row">
                                    <h3>¡Envíanos tus comentarios!</h3>
                                </div>
                                <hr><br>
                                <div class="form-row">
                                    <label>
                                        <small class="form-text text-muted">Correo</small>
                                        <input type="email" name="email" id="email" required>
                                    </label>
                                </div>
                                <div class="form-row">
                                    <label>
                                        <small class="form-text text-muted">Comentario</small>
                                        <textarea name="comentario" id="comentario"  required></textarea>
                                    </label>
                                </div>
                                <input type="hidden" name="_subject" value="Nuevo comentario recibido">
                                <input type="hidden" name="_next" value="http://localhost:8080/Capri/login.jsp/enviado2.jsp">
                                <div class="form-row">
                                    <input type="submit" value="Enviar">
                                </div>
                            </div>
                        </form>
                        <div class="social-icons">
                            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
                            <a href="https://www.whatsapp.com" target="_blank"><i class="fab fa-whatsapp"></i></a>
                            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
                        </div>
                
                    </div>
                    
                    
                         <div class='col-md-6'>

                             <div class='col-md-12'>
                            
                             <img src="">
                             
                              </div>
                             
                             
                        </div>
                
                    </div>
                </div>
                
            </div>
        </section>

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
                String correo = request.getParameter("email");
                String comentario = request.getParameter("comentario");

                if (correo != null && !correo.isEmpty() && comentario != null && !comentario.isEmpty()) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver"); // Reemplaza "nombre_de_tu_driver" por el nombre de tu driver JDBC
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", ""); // Reemplaza los placeholders por tu URL, usuario y contraseña de la base de datos
                        PreparedStatement st = conexion.prepareStatement("INSERT INTO comentarios (correo, comentario) VALUES (?, ?)");
                        st.setString(1, correo);
                        st.setString(2, comentario);
                        st.executeUpdate();
                        st.close();
                        conexion.close();
                        response.sendRedirect("enviado2.jsp");
                    } catch (Exception e) {
                        e.printStackTrace(); // Manejar o registrar el error apropiadamente
                        out.println("<p>Error al procesar el comentario.</p>");
                    }
                } else {
                    out.println("<p>Por favor, completa todos los campos.</p>");
                }
            }
        %>
        
        
        <div class="section">
            

            
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.491667101975!2d-89.21822468511084!3d13.699558890384295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f6330529381d47f%3A0x4b0bda3ab3343d12!2sPQ2H%2BXXP%2C%2057%20Avenida%20Norte%2C%20San%20Salvador%201101%2C%20El%20Salvador!5e0!3m2!1sen!2sus!4v1622544413494!5m2!1sen!2sus" 
                width="100%" 
                height="500" 
                style="border:solid 1px #000;" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>
        </div>


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
