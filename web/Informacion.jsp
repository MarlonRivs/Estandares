<%-- 
    Document   : Informacion
    Created on : 1 may 2024, 11:30:55 a. m.
    Author     : willj
--%>

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
            
            .column-content{margin-top: -20px;}
            
            .section-description{font-size: 20px; }
            .section-title{font-size: 50px; font-weight: bold; margin-bottom: 50px;}
            
            
            .column-content h2{font-size: 50px; font-weight: bold; margin-bottom: 50px;}
            .column-content p{font-size: 20px; }
            .list-group-item{font-size: 20px;}
            
        </style>
        
        
        
        <title>Informacion</title>
    </head>


  <body>
      <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>

    
    
    <section id="quienes-somos" class="py-5" style="margin-top:200px;  background-image: url('img/nv6.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" style="margin-bottom:50px;">
                <h2 class="section-title">¿Quiénes somos?</h2>
                <p class="section-description">Somos una empresa comprometida con ofrecer productos de alta calidad y un excelente servicio a nuestros clientes. Desde nuestro inicio, nos hemos enfocado en crear experiencias únicas para aquellos que confían en nosotros.</p>
                <p class="section-description">Nuestro equipo está formado por profesionales apasionados que se esfuerzan por superar las expectativas en cada proyecto que emprendemos. Valoramos la confianza que nuestros clientes depositan en nosotros y nos esforzamos por mantenerla en cada interacción.</p>
            </div>
            <div class="col-md-6">
                <div class="container">
                     <img src="img/v3.jpg" style="max-width: 100%; border-radius: 20px; " >
                </div><br><br>
            </div> 
            <div class="col-md-6">
                <div class="container">
                     <img src="img/v4.jpg" style="max-width: 100%; border-radius: 20px;" >
                </div>
            </div>
          
        </div>
    </div>
</section><br><br><br>

<div class="container">
    <div class="row section-container">
        
        <div class="col-md-6">
            <div class="column-content">
                <h2>Nuestros Valores</h2>
                <br>
                <ul class="">
                    <li class="list-group-item">
                        <i class="fas fa-balance-scale"></i> Integridad
                        <p>Actuamos con honestidad y ética en todas nuestras acciones, asegurando la transparencia y la responsabilidad.</p>
                    </li><br>
                    <li class="list-group-item">
                        <i class="fas fa-lightbulb"></i> Innovación
                        <p>Fomentamos la creatividad y la mejora continua para ofrecer soluciones vanguardistas y eficientes.</p>
                    </li><br>
                    <li class="list-group-item">
                        <i class="fas fa-handshake"></i> Compromiso con el Cliente
                        <p>Nos dedicamos a satisfacer y superar las expectativas de nuestros clientes, brindando un servicio excepcional y personalizado.</p>
                    </li><br>
                    <li class="list-group-item">
                        <i class="fas fa-star"></i> Calidad
                        <p>Nos esforzamos por alcanzar la excelencia en todos nuestros productos y servicios, asegurando altos estándares de calidad.</p>
                    </li>
                </ul>
            </div>
        </div>
        
        
        
       
            <div class="col-md-6">
               <div class="column-content">
                    <h2>Nuestra Historia</h2>
                    <br>
                    <p>Desde nuestros humildes comienzos en el garaje de casa hasta convertirnos en líderes de la industria, hemos recorrido un largo camino. Fundada en 1990 por Felipe Hernández.</p>
                    <p>Con el paso de los años, hemos experimentado un crecimiento constante y hemos superado numerosos desafíos, gracias a la dedicación y el esfuerzo de nuestro talentoso equipo.</p>
                </div>

            </div>
        
        
        
        
        
        
        

        <div class="col-md-12">
            <br><br><br><br><br><br><br><br><div class="column-content">
                <h2>Compromiso con la Sostenibilidad</h2>
                <br>
                <p>En nuestra empresa, estamos comprometidos con la protección del medio ambiente y el bienestar de la comunidad. A través de iniciativas como...</p>
                <p>Nuestro objetivo es reducir nuestro impacto ambiental y contribuir positivamente al desarrollo sostenible en nuestra industria y más allá.</p>
            </div>
        </div
        

            <div class="col-lg-12" >
                <div class="container">
                     
                </div>
            </div>
        
        
 
         <br><br><br> <br><br><br><div class="row">
          

            
            <div class="col-lg-6">
                <br><br><div class="container">
                    <img src="img/v5.jpg" style="object-fit: cover; max-width: 100%; margin: 0; margin-bottom: 50px; border-radius: 20px;" >
                </div>
            </div><br>

            <div class="col-md-6">
                <br><br><br><div class="column-content" style="margin-top:-40px;">
                    <h2>Visión</h2>
                    <hr>
                    <p>Ser la empresa número uno en soluciones integrales para el descanso y el confort en el hogar. Nos comprometemos a ofrecer productos de excelente calidad, diseñados con materiales duraderos y tecnología innovadora.</p>   
                </div>
            </div>
            
            

            <div class="col-md-6">
                <br><br><br><div class="column-content">
                    <h2>Misión</h2>
                     <hr>
                    <p>En nuestra empresa nos dedicamos a brindar soluciones integrales para el descanso y el confort en el hogar. Nos comprometemos a ofrecer productos de excelente calidad, diseñados con materiales duraderos y tecnología innovadora, que satisfagan las necesidades y preferencias de nuestros clientes. Además, nos esforzamos por proporcionar un servicio al cliente excepcional, orientado a superar las expectativas y garantizar la plena satisfacción de quienes confían en nosotros para equipar sus espacios de descanso.</p>   
                </div>
            </div>
            
            
            <div class="col-lg-6">
                <br><br><div class="container">
                    <img src="img/v4.jpg" style="object-fit: cover; max-width: 100%; margin: 0; margin-bottom: 50px; border-radius: 20px;" >
                </div>
            </div>
            

        </div>
        

        </div>    <br><br><br> <br><br><br>  <br><br><br>



   
    
    <!-- Footer -->
         <%@ include file="footer.jsp" %>
  </body>
</html>

