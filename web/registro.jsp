<%@ page import="java.sql.*" %>

<%
    if (session.getAttribute("login") != null) {
        response.sendRedirect("principal.jsp");
    }

    if (request.getParameter("btn_register") != null) {
        String firstname, lastname, email, password, telefono, direccion, departamento;

        firstname = request.getParameter("txt_firstname");
        lastname = request.getParameter("txt_lastname");
        email = request.getParameter("txt_email");
        password = request.getParameter("txt_password");
        telefono = request.getParameter("txt_telefono");
        direccion = request.getParameter("txt_direccion");
        departamento = request.getParameter("txt_departamento");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", "");

            // Verificar si el correo ya existe en la base de datos
            PreparedStatement checkEmailStmt = con.prepareStatement("SELECT email FROM registro WHERE email = ?");
            checkEmailStmt.setString(1, email);

            ResultSet emailResult = checkEmailStmt.executeQuery();
            if (emailResult.next()) {
%>
<script>
    window.onload = function () {
        Swal.fire({
            icon: 'error',
            title: 'Correo Electrónico en Uso',
            text: 'Lo sentimos, la dirección de correo que ha proporcionado ya está registrada en nuestro sistema. Por favor, elija una dirección de correo diferente.',
            showConfirmButton: true,
            customClass: {
                confirmButton: 'btn btn-primary',
            }
        });
    };
</script>
<%
            } else {
                // El correo no existe, continuar con el registro
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO registro(firstname, lastname, email, password, telefono, direccion, departamento) VALUES (?, ?, ?, ?, ?, ?, ?)");
                pstmt.setString(1, firstname);
                pstmt.setString(2, lastname);
                pstmt.setString(3, email);
                pstmt.setString(4, password);
                pstmt.setString(5, telefono);
                pstmt.setString(6, direccion);
                pstmt.setString(7, departamento);

                pstmt.executeUpdate();

                request.setAttribute("successMsg", "Registro Exitoso...! Por favor inicie Sesión");

                con.close();
            }
        } catch (Exception e) {
            out.println(e);
        }
    }
%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registro</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>

    <style>
        body {

        }

        .container {
            margin-top: 100px;
           
        }

        .form-control {
            margin-bottom: 20px;
        }

        .form-control small {
            margin-top: 20px;
        }

        .btn-dark {
            width: 100%;
            padding: 10px;
        }
    </style>

    <body>
        <div class="container col-md-12">
            <div class="row justify-content-center">
                <form class="form-register col-md-10" method="post" onsubmit="return validate();">
                    <p class="text-success text-center">
                        <%
                            if (request.getAttribute("successMsg") != null) {
                                out.println(request.getAttribute("successMsg"));
                            }
                        %>
                    </p>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <small class="form-text text-muted">Nombre</small>
                            <input type="text" class="form-control" name="txt_firstname" id="fname" placeholder="Ingrese su nombre" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <small class="form-text text-muted">Apellidos</small>
                            <input type="text" class="form-control" name="txt_lastname" id="lname" placeholder="Ingrese sus apellidos" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <small class="form-text text-muted">Correo</small>
                            <input type="text" class="form-control" name="txt_email" id="email" placeholder="Ingrese su correo electrónico" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <small class="form-text text-muted">Contraseña</small>
                            <input type="password" class="form-control" name="txt_password" id="password" placeholder="Ingrese su contraseña" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <small class="form-text text-muted">Teléfono</small>
                            <input type="text" class="form-control" name="txt_telefono" id="telefono" placeholder="Ingrese su teléfono" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <small class="form-text text-muted">Dirección</small>
                            <input type="text" class="form-control" name="txt_direccion" id="direccion" placeholder="Ingrese su dirección" required>
                        </div>
                        <div class="col-md-12 mb-3">
                            <small class="form-text text-muted">Departamento</small>
                            <select class="form-control" name="txt_departamento" id="departamento" required>
                                <option value="" disabled selected>Seleccione su departamento</option>
                                <option value="Ahuachapán">Ahuachapán</option>
                                <option value="Cabañas">Cabañas</option>
                                <option value="Chalatenango">Chalatenango</option>
                                <option value="Cuscatlán">Cuscatlán</option>
                                <option value="La Libertad">La Libertad</option>
                                <option value="La Paz">La Paz</option>
                                <option value="La Unión">La Unión</option>
                                <option value="Morazán">Morazán</option>
                                <option value="San Miguel">San Miguel</option>
                                <option value="San Salvador">San Salvador</option>
                                <option value="Santa Ana">Santa Ana</option>
                                <option value="San Vicente">San Vicente</option>
                                <option value="Sonsonate">Sonsonate</option>
                                <option value="Usulután">Usulután</option>
                            </select>
                        </div>
                        <div class="col-md-12 mb-3">
                            <button type="submit" class="btn btn-dark" name="btn_register">Registrarse</button>
                        </div>
                    </div>

                    <p class="text-center mt-3"><hr>
                    <a href="login.jsp" class="form-log-in-with-existing" style='text-decoration: none; color:black'>¿Ya tienes una cuenta? <b>Ingresa aquí</b></a>
                    </p>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>
    </body>

</html>
