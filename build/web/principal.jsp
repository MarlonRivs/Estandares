
<%@include file="conexion.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Principal</title>

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
        

   

        <style>
            *{
                font-family: Arial, sans-serif;
            }

            body{
                background-color: white;
                overflow-x: hidden;
            }

            /* APARTADOS DE ANIMACION INICIAL DE PARRAFO E IMAGEN */
            /* Estilos para la animación */
            .fade-in {
                opacity: 0;
                animation: fadeInAnimation 1.5s ease-in-out forwards;
            }

            /* Definición de la animación */
            @keyframes fadeInAnimation {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }

            .slide-in {
                transform: translateY(-90px);
                opacity: 0;
                animation: slideInAnimation 1s ease-in-out forwards;
            }

            /* Definición de la animación de desplazamiento */
            @keyframes slideInAnimation {
                from {
                    transform: translateY(-50px);
                    opacity: 0;
                }
                to {
                    transform: translateY(0);
                    opacity: 1;
                }
            }

            .why-choose-us {
                padding: 300px;
            }
            .why-choose-us h2 {
                margin-bottom: 40px;
                font-size: 2.5rem;
                font-weight: bold;
                text-align: center;
                color:black;
            }
            .why-choose-us .icon {
                font-size: 3rem;
                color: black;
                margin-bottom: 20px;
            }
            .why-choose-us .feature {
                text-align: center;
                padding: 20px;
            }
            .why-choose-us .feature h4 {
                margin-bottom: 10px;
                font-size: 25px;
                font-weight: bold;
                color:black;
            }
            .why-choose-us .feature p {
                font-size: 20px;
                color: black;
            }

            .featured-products {
                padding: 200px;
                margin-top: -100px;

            }
            .featured-products h2 {
                margin-bottom: 80px;
                font-size: 2.5rem;
                font-weight: bold;
                text-align: center;
                color:white;
            }
            .product {
                text-align: center;
                margin-bottom: 30px;
                padding: 20px;
                border-radius: 80px;
                background-color: white;
                

            }
            

            
            .product img {
                max-width: 290px;
                margin-bottom: 30px;
                margin-top: 25px;
            }
            .product h4 {
                margin-bottom: 10px;
                font-size: 1.5rem;
                font-weight: bold;
            }
            .product p {
                color: #6c757d;
            }

            .custom-card {
                position: relative;
                width: 600px;
                margin-bottom: 300px;
                height: 200px;
                border: none;
            }

            .custom-card-img {
                width: 100%;
                height: auto;
            }

            .custom-card-overlay {
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                padding: 1.25rem;
                background: rgba(0, 0, 0, 0.5);
                color: white;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .custom-card-title {
                font-size: 1.75rem;
                margin-bottom: 0.5rem;
            }

            .custom-card-text {
                font-size: 1rem;
                margin-bottom: 0.75rem;
            }

            .custom-card-small-text {
                font-size: 0.875rem;
            }

            .carousel-inner img {
                height: 100%;
                object-fit: cover;
            }

            .product:hover {
                transition: box-shadow 0.4s ease;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
            }
            
            
            .hover-card {
                transition: box-shadow 0.3s ease;
            }

            .hover-card:hover {
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
            }
            
            
            .overlay {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                opacity: 0;
                transition: opacity 0.3s ease;
            }

            /* CSS para el efecto de zoom */
            .image-container:hover .card-img-top {
                transform: scale(1.3);
            }
           
            
            .hover-card:hover {
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
            }
            
            
            .catalog-section {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                margin: 20px;
                margin-bottom: 200px;
                margin-top: 80px;
            }
            .catalog-container {
                display: flex;
                flex-direction: column;
                margin: 20px;
            }
            #card-limpieza, #card-dormir, #card-camas, #card-sofas {
                position: relative;
                width: 300px;
                height: 200px;
                margin: 20px;
                overflow: hidden;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                transition: transform 0.2s;
            }
            #card-limpieza img, #card-dormir img, #card-camas img, #card-sofas img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
            #card-limpieza .card-title, #card-dormir .card-title, #card-camas .card-title, #card-sofas .card-title {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: white;
                font-size: 24px;
                font-weight: bold;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
                text-align: center;
            }
            #card-limpieza:hover, #card-dormir:hover, #card-camas:hover, #card-sofas:hover {
                transform: scale(1.05);
            }
            .card a {
                display: block;
                width: 100%;
                height: 100%;
                text-decoration: none;
            }
            
        </style>

    </head>


    <body>

        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="navbar.jsp" %>
    
  

        <section  style='background-image: url("img/bedf2.jpg"); background-size: cover; background-repeat: no-repeat;  margin-top: -120px;  background-attachment: fixed;  padding: 14vw;'>       
            <div class="col-md-6" id="main-image" style="display: flex;  margin-bottom: 2vw;">
                <h2 style="font-weight: bold; color:white; text-shadow: 0.1vw 0.1vw 0.5vw rgba(0, 0, 0, 0.6); text-align: left; font-size: 90px;  margin-top: 180px; ">Cute Dreams</h2>
                 
            </div>

            <!-- INFORMACION A AGREGAR -->
            <div class="container col-md-12" style="text-align: left" id="informacion">
                <p style="color: white; font-weight: bold; font-size: 40px; text-shadow: 0.1vw 0.1vw 0.5vw rgba(0, 0, 0, 0.6);">Brindando los mejores productos de comodidad y calidad a la población salvadoreña</p><br>
            </div>
        </section>


        
        
           <!-- CATALOGOS -->
                  

           
        <section class="catalog-section" style=' '>
            
            <div class="catalog-column">
                <div id="card-limpieza" class="card">
                    <a href="limpieza.jsp">
                        <img src="img/cleaning.jpg" alt="Limpieza">
                        <div class="card-title">Limpieza</div>
                    </a>
                </div>
            </div>
            <div class="catalog-column">
                <div id="card-dormir" class="card">
                    <a href="accesorios.jsp">
                        <img src="img1/a4.jpg" alt="Artículos de Dormir">
                        <div class="card-title">Artículos de Dormir</div>
                    </a>
                </div>
            </div>
            <div class="catalog-column">
                <div id="card-camas" class="card">
                    <a href="camas.jsp">
                        <img src="img/c10.jpg" alt="Camas">
                        <div class="card-title">Camas</div>
                    </a>
                </div>
            </div>
            <div class="catalog-column">
                <div id="card-sofas" class="card">
                    <a href="sofas.jsp">
                        <img src="img1/s5.jpg" alt="Sofás">
                        <div class="card-title">Sofás</div>
                    </a>
                </div>
            </div>
        </section>


                 <!-- Informacion  -->
      <section class="featured-products" style='background-image: url("img/.jpg"); background-size: cover; background-repeat: no-repeat; background-attachment: scroll; padding: 3vw;'>       
           
          
          
           <div class="container " style="display:flex; justify-content:center; align-items:center; margin-bottom: 200px; margin-top: 100px; color:black">
               
                <div class="row">
                    
                    <div class="col-md-4" style="padding:20px;">

                         <a href="Informacion.jsp">
                             <img  style="border-radius:20px;" src="img/1.png" >

                         </a>

                     </div>

                     <div class="col-md-8" style="padding:110px; margin-top: 60px; ">
                         <h1>
                             Cute Dreams
                         </h1><br>
                         <p style="font-size:20px;">
                             Somos una tienda de venta en línea que busca la innovación y vanguardia a la hora de ofrecer nustros productos y servicios a todo el 
                             territorio nacional de El Salvador, ofreciendo la mejor calidad en nuestros productos y ofreciendo servicios que ayuden a la 
                             población referente a cuidar mantener en buen estado los productos.
                         </p>

                     </div>

               </div>
               
               
               
           </div>
          
           
                
     </section>            
                 
                 
           
        <!-- PRODUCTOS -->

        <section class="featured-products" style='background-image: url("img/.jpg"); background-size: cover; background-repeat: no-repeat; background-attachment: scroll; padding: 10vw;'>
    
                <h2 id="" style="color:black; text-align: left; font-size: 65px; margin-bottom: 100px; background-color: white; padding: 20px; border-radius: 5px; ">Productos Destacados</h2>
                <div class="" style="margin-top: 40px; margin-bottom: 100px; padding:10px;">
                    <div class="">
                        <div class="row" style="text-align:left;">
                            <% int count = 0; // Inicia el conteo de las cartas mostradas.
                                st = conexion.prepareStatement("SELECT d.id_destacados, d.Nombre, d.Precio, d.Descripcion, d.Foto FROM destacados d");
                                rs = st.executeQuery();
                        while (rs.next()) {%>
                            <div class="col-md-6" style="margin-top: 40px;">
                                <div class="card hover-card" style="border-radius: 40px; padding: 30px; height: auto;  ">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="image-container" style="width: 100%; height: auto; overflow: hidden; display: flex;  align-items: center; position: relative;">
                                                <img src="<%= rs.getString("Foto")%>" class="card-img-top" style=" border-radius:3px; object-fit: cover; width: 100%; height: auto; transition: transform 0.5s;">
                                                <div class="overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; background-color: rgba(0,0,0,0.5); opacity: 0; transition: opacity 0.5s;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="text-align:left;">
                                            <div class="card-body" style="color: black;">        
                                                <h5 class="card-title" style="text-align:left; font-weight: bold;"><%= rs.getString("Nombre")%></h5><br>
                                                <p class="card-text"><%= rs.getString("Descripcion")%></p>
                                                <p class="card-text">Precio: $<%= rs.getDouble("precio")%></p>
                                                <form action="productoVistadestacados.jsp" method="post">
                                                    <input type="hidden" name="id_destacados" value="<%= rs.getInt("id_destacados")%>">
                                                    <input type="hidden" name="nombre" value="<%= rs.getString("Nombre")%>">
                                                    <input type="hidden" name="precio" value="<%= rs.getDouble("Precio")%>">
                                                    <input type="hidden" name="descripcion" value="<%= rs.getString("Descripcion")%>">
                                                    <input type="hidden" name="foto" value="<%= rs.getString("Foto")%>">
                                                    <button type="submit" class="btn btn-dark">Comprar</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% count++;
                                // Esto genera otra fila con 4 nuevas cartas. 
                                if (count % 4 == 0) { %>
                        </div>
                        <div class="row">
                            <% }
                        }
                        conexion.close();%>
                        </div>
                    </div>
                </div>
            </div>
        </section>


                       
                          
                
                        

        <!-- PORQUE ESCOGERNOS -->

        <section class="why-choose-us" style='   background-image: url("img/.jpg"); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; padding: 10vw;'>
            <div id='' class="container">

                <div class="row">
                    <div class="col-md-4 feature">
                        <i class="fas fa-bed icon"></i>
                        <h4>Calidad Superior</h4>
                        <p>Nuestros productos están fabricados con materiales de alta calidad para garantizar comodidad y durabilidad.</p>
                    </div>
                    <div class="col-md-4 feature">
                        <i class="fas fa-truck icon"></i>
                        <h4>Entrega Rápida</h4>
                        <p>Ofrecemos entrega rápida y segura para que puedas disfrutar de tus nuevos muebles lo antes posible.</p>
                    </div>
                    <div class="col-md-4 feature">
                        <i class="fas fa-headset icon"></i>
                        <h4>Atención al Cliente</h4>
                        <p>Nuestro equipo de atención al cliente está siempre disponible para ayudarte con cualquier consulta o problema.</p>
                    </div>
                    <div class="col-md-4 feature" style="margin-top:200px;">
                        <i class="fas fa-dollar-sign icon"></i>
                        <h4>Precios Competitivos</h4>
                        <p>Ofrecemos precios justos y competitivos en todos nuestros productos para que obtengas el mejor valor por tu dinero.</p>
                    </div>
                    <div class="col-md-4 feature" style="margin-top:200px;">
                        <i class="fas fa-shield-alt icon"></i>
                        <h4>Garantía de Satisfacción</h4>
                        <p>Garantizamos tu satisfacción con nuestros productos, con políticas de devolución fáciles y transparentes.</p>
                    </div>
                    <div class="col-md-4 feature" style="margin-top:200px;">
                        <i class="fas fa-leaf icon"></i>
                        <h4>Productos Ecológicos</h4>
                        <p>Nos comprometemos con el medio ambiente utilizando materiales sostenibles y prácticas de fabricación ecológicas.</p>
                    </div>
                </div>
            </div>
        </section>

        
         <a href="#" style=" margin-top: 20px; margin-bottom: 20px; margin-left: 1700px;" class="btn btn-lg btn-dark btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

        <div class="section">

            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.491667101975!2d-89.21822468511084!3d13.699558890384295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f6330529381d47f%3A0x4b0bda3ab3343d12!2sPQ2H%2BXXP%2C%2057%20Avenida%20Norte%2C%20San%20Salvador%201101%2C%20El%20Salvador!5e0!3m2!1sen!2sus!4v1622544413494!5m2!1sen!2sus" 
                width="100%" 
                height="600" 
                style="border:solid 2px black;" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>
        </div>


       

        <!-- Footer -->
        <%@ include file="footer.jsp" %>





        <script src="https://cdnjs.cloudflare.com/ajax/libs/intersection-observer/2.0.0/intersection-observer.min.js"></script>



        <script>

            // Seleccionar todas las imágenes con el atributo data-src
            const lazyImages = document.querySelectorAll('img[data-src]');

            // Configurar el observador de intersección
            const observer = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const img = entry.target;
                        img.src = img.dataset.src;
                        observer.unobserve(img); // Detener la observación una vez que se cargue la imagen
                    }
                });
            });

            // Observar todas las imágenes perezosas
            lazyImages.forEach(image => {
                observer.observe(image);
            });



        </script>



        <!-- FUNCIONES DE MOVIMIENTOS -->

        <script>
            // Funcion para fade in de imagen

            // Obtener la referencia del elemento de la imagen
            var image = document.getElementById('main-image');

            // Agregar la clase para la animación después de que la página haya cargado completamente
            window.addEventListener('load', function () {
                image.classList.add('fade-in');
            });
        </script>






        <script>
            //Funcion para fade in de parrafo inicial  

            // Obtener la referencia del elemento de la imagen
            var informacion = document.getElementById('informacion');

            // Agregar la clase para la animación después de que la página haya cargado completamente
            window.addEventListener('load', function () {
                informacion.classList.add('fade-in-2');
            });
        </script>



        <script>
            //Script para animaciones fluidas

            // Configura ScrollReveal
            ScrollReveal().reveal('#catalogo', {
                delay: 300,
                interval: 200,
                origin: 'bottom',
                distance: '60px',
                duration: 1000,
                easing: 'cubic-bezier(0.5, 0, 0.5, 1)'
            });
        </script>


        <script>
            // Configura ScrollReveal
            ScrollReveal().reveal('#informacion', {
                delay: 300,
                interval: 200,
                origin: 'left',
                distance: '60px',
                duration: 1000,
                easing: 'ease-in-out'
            });
        </script>


        <script>
            // Configura ScrollReveal
            ScrollReveal().reveal('#secciones', {
                delay: 300,
                interval: 200,
                origin: 'rigth',
                distance: '60px',
                duration: 1000,
                easing: 'cubic-bezier(0.5, 0, 0.5, 1)'
            });
        </script>







    </body>
</html>
