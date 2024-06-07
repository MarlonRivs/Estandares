<%-- 
    Document   : productos
    Created on : 5/04/2024, 11:05:25 AM
    Author     : willi
--%>
<%@include file="conexion.jsp"%>
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


        <title>Productos</title>

        <style>
            *{
                font-family: Arial, sans-serif;

            }

            body{
                background-image: url("img/nv2.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                margin-top: -120px;
                background-attachment: fixed;
                overflow-x: hidden;
            }



            .hover-card {
                transition: box-shadow 0.3s ease;
            }

            .hover-card:hover {
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
            }



        </style>
    </head>
    <body>
        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>

        <h1 class='container' style="text-align: left; margin-top: 290px;">Productos Destacados</h1>



        <!-- CATALOGOS DE LOS PRODUCTOS -->

        <!-- BUSCADOR -->
        <form class="d-flex container " role="search" style='height:50px; margin-top: 30px;'>
            <input class="form-control me-1" type="search"  aria-label="Search" placeholder="Buscar por nombre" id="searchInput" onkeyup="cardbody()">
        </form>



        <div class="container" style="margin-top: 40px; margin-bottom: 200px;">
            <div class="container">
                <div class="row">
                    <%                int count = 0; // Inicia el conteo de las cartas mostradas.
                        st = conexion.prepareStatement("SELECT d.id_destacados, d.Nombre, d.Precio, d.Descripcion, d.Foto FROM destacados d");
                        rs = st.executeQuery();
                        while (rs.next()) {
                    %>
                    <div class="col-md-3" style="margin-top: 40px;">
                        <a href="productoDestacado.jsp?id=<%= rs.getInt("id_destacados")%>" style="text-decoration: none; color: inherit;">
                            <div class="card hover-card" style="padding: 20px; height: 100%;">
                                <div style="width: 100%; height: 200px; overflow: hidden; display: flex; justify-content: center; align-items: center;">
                                    <img src="<%= rs.getString("Foto")%>" class="card-img-top" style="object-fit: cover; width: 100%; height: 100%;">
                                </div>
                                <div class="card-body" style="color: black;">        
                                    <h5 class="card-title" style="text-align:center; font-weight: bold;"><%= rs.getString("Nombre")%></h5><br>
                                    <p class="card-text"><%= rs.getString("Descripcion")%></p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <%
                        count++;
                        // Esto genera otra fila con 4 nuevas cartas. 
                        if (count % 4 == 0) {
                    %>
                </div>
                <div class="row">
                    <%
                            }
                        }
                        conexion.close();
                    %>
                </div>
            </div>
        </div>



        <!-- Footer -->
        <%@ include file="footer.jsp" %>

        <script>
            function cardbody() {   //FUNCION DE LA VARIABLE
                var input = document.getElementById("searchInput");  //BUSCA EL ELEMENTO HTML CON EL ID
                var filter = input.value.toLowerCase();   //SE HACE PARA NO TENER PROBLEMAS EN MINUSCULAS Y MAYUSCULAS
                var cards = document.querySelectorAll(".container .card");   //DONDE BUSCARA LOS ELMENTOS CON ESTOS NOMBRES Y FILTRARA LAS TARJETAS

                for (var i = 0; i < cards.length; i++) {   //RECORRE TODAS LAS TARJETAS 
                    var nameCell = cards[i].querySelector(".card-title"); //BUSCA EL NOMBRE DE LA TARJETA Y LO ALMACENA EN NAMECELL

                    if (nameCell) {
                        var name = nameCell.textContent || nameCell.innerText;   //OBTIENE EL TEXTO DEL TITULO

                        if (name.toLowerCase().indexOf(filter) > -1) {   //DEVUELVE LA CARTA SI SE ENCUENTRA RELACION CON EL NOMBRE DE LA BUSQUEDA
                            cards[i].style.display = "";   //SE MUESTRA SI CONCIDE CON LA BUSQUEDA
                        } else {
                            cards[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
    </body>
</html>
