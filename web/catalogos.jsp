<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Link para CDN FONT AWESOME ICONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                overflow-x: hidden;
            }
            section {
                height: 900px;
                position: relative;
                background-size: cover;
                background-position: center;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 100px;
                
            }
            .content {
                margin-top: 100px;
                text-align: center;
                color: black;
                opacity: 0;
                transform: translateY(50px);
                transition: opacity 1s ease, transform 1s ease;
                
            }
            section.visible .content {
                opacity: 1;
                transform: translateY(0);
            }
            h1 {
                font-size: 100px;
                margin-bottom: 20px;
            }
            p {
                font-size: 20px;
                margin-bottom: 30px;
            }
            .content a {
                background-color: #2b2d2e;
                color: white;
                padding: 10px 30px;
                text-decoration: none;
                border-radius: 5px;
            }
        </style>
    </head>

    <body>
        <%@ include file="sub_navbar.jsp" %>


        
        <section style="background-image: url('img/bed4.jpg'); " class="animate">
            <div class="content" style=';'>
                <h1>Camas</h1>
                <p>Increibles camas a tu disponibilidad</p>
                <a href="camas.jsp">Ver más</a>
            </div>
        </section>

        <section style="background-image: url('img/w3.jpg');" class="animate">
            <div class="content">
                <h1>Sofás</h1>
                <p>Magníficos sofás para tus diferentes gustos</p>
                <a href="sofas.jsp">Ver más</a>
            </div>
        </section>

        <section style="background-image: url('img/cleaning.jpg');" class="animate">
            <div class="content">
                <h1>Limpieza</h1>
                <p>Mantén limpios tus muebles con estos artículos</p>
                <a href="limpieza.jsp">Ver más</a>
            </div>
        </section>

        <section style="background-image: url('img/saba1.jpg');" class="animate">
            <div class="content">
                <h1>Artículos de Dormir</h1>
                <p>Aligera tu sueño con el repertorio de artículos para mejorar tu descanso</p>
                <a href="accesorios.jsp">Ver más</a>
            </div>
        </section>

        <%@ include file="footer.jsp" %>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const sections = document.querySelectorAll('section');

                const observer = new IntersectionObserver(entries => {
                    entries.forEach(entry => {
                        if (entry.isIntersecting) {
                            entry.target.classList.add('visible');
                        }
                    });
                }, {
                    threshold: 0.1
                });

                sections.forEach(section => {
                    observer.observe(section);
                });
            });
        </script>
    </body>
</html>
