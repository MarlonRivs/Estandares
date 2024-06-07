
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vista del Producto</title>
        <!-- Link para CDN BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Link para CDN FONT AWESOME ICONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>



        <style>


            body{

            }



            .product-container {
                margin-top: 200px;
                display: flex;
                justify-content: center;
                margin-bottom: 200px;
            }
            .product-card {
                max-width: 1500px;
                width: 100%;
                padding: 30px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
                border-radius: 10px;
            }
            .product-img {
                width: 100%;
                height: 500px;
                ;
                max-height: 500px;
                object-fit: cover;
                border-radius: 20px;
            }
            .product-details {
                margin-top: 20px;
                font-size: 20px;
                padding: 70px;
            }
            .product-details h5 {
                font-weight: bold;
                font-size: 30px;
                margin-bottom: 15px;
            }
            .product-details p {
                margin-bottom: 15px;
                font-size: 20px;
            }
            button {
                background-color: black;
                color: white;
                text-align: center;
                font-size: 20px;
                margin-top: 10px;
                cursor: pointer;
                padding: 15px;
                border-radius: 10px;

            }


            .card-body a:hover {
                transition: box-shadow 0.4s ease;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            }


        </style>
    </head>
    <body>

        <!-- INCLUCION DE MENU NAVBAR -->
        <%@ include file="sub_navbar.jsp" %>

        <div class="container product-container">
            <div class="card product-card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <%
                            Connection conexion = null;
                            PreparedStatement st = null;
                            ResultSet rs = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", "");
                                int id = Integer.parseInt(request.getParameter("id"));
                                st = conexion.prepareStatement("SELECT s.Nombre, s.Precio, s.Descripcion, s.Foto FROM sofa s WHERE s.id_sofa = ?");
                                st.setInt(1, id);
                                rs = st.executeQuery();
                                if (rs.next()) {


                        %>
                        <img src="<%= rs.getString("Foto")%>" class="product-img" style="border-radius: 20px;" alt="<%= rs.getString("Nombre")%>">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body product-details">
                            <h5 class="card-title"><%= rs.getString("Nombre")%></h5><hr>
                            <p class="card-text"><%= rs.getString("Descripcion")%></p>
                            <p class="card-text"><strong>Precio: $</strong><%= rs.getDouble("Precio")%></p><br>
                            <a href="compraProducto.jsp?id=<%= id%>&nombre=<%= rs.getString("Nombre")%>&precio=<%= rs.getDouble("Precio")%>" style="text-decoration: none; font-size: 20px; color: white; background-color: black; padding: 10px 20px; border-radius: 5px;">Comprar</a>

                        </div>
                    </div>
                    <%
                            } else {
                                out.println("<p>Producto no encontrado.</p>");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            out.println("<p>Error al obtener los detalles del producto.</p>");
                        } finally {
                            if (rs != null) {
                                rs.close();
                            }
                            if (st != null) {
                                st.close();
                            }
                            if (conexion != null) {
                                conexion.close();
                            }
                        }
                    %>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <%@ include file="footer.jsp" %>     

      

        <!-- Bootstrap JS and Popper.js -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
