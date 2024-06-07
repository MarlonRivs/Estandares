<%-- 
    Document   : footer
    Created on : 5/04/2024, 10:42:53 AM
    Author     : willi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            footer .cpy {
                 text-align: center;
                 margin-top: 20px;
                 font-size: 14px;
             }
             .footer-content {
                 display: flex;
                 justify-content: space-between;
                 align-items: flex-start;
                 flex-wrap: wrap;
                 max-width: 1200px;
                
             }

             .contact-info,
             .social-links {
                 flex: 1;
                 margin: 0 20px;
             }
             footer {
                 
                 background-color: black;
                 color: white; 
                 padding: 30px 0;
                 
                 
                 /* Sombra solo en la parte superior */
                 box-shadow: 0 -5px 15px rgba(50, 50, 50, 0.6);


             }
             
             .contact-info img{max-width: 300px;}
             
             
        </style>
    </head>
    <body>
        <footer>
            <div class="footer-content">
                <div class="contact-info">
                    <img src="img/2f.png">
                </div>
                <div class="contact-info">
                    <h3>Información de contacto</h3><hr><br>
                    <p>Teléfono: (503) 4456-7890</p>
                    <p>Email: IndustriasCuteDreams@gmail.com</p>
                    <p>Dirección: Calle Huizucar, San Salvador, El Salvador, San Salvador, San Salvador</p>
                </div>                
                <div class="social-links">
                    <h3>Redes sociales</h3><hr><br>
                    <ul>
                        <i class="fa-brands fa-facebook"></i><a href="#" style="text-decoration:none; color:white; padding-left: 8px;"><span>Facebook</span></a><br><br>
                        <i class="fa-brands fa-twitter"></i><a href="#" style="text-decoration:none; color:white; padding-left: 8px;"><span>Twitter</span></a><br><br>
                        <i class="fa-brands fa-instagram"></i><a href="#" style="text-decoration:none; color:white; padding-left: 8px;"><span>Instagram</span></a>
                    </ul>
                </div>
            </div><hr>
            <p class="cpy">&copy; 2024 Derechos Reservados</p>
        </footer>
    </body>
</html>
