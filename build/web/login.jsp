<%@ page import="java.sql.*" %>

<%
    if (session.getAttribute("login") != null) {
        response.sendRedirect("menu.jsp");
    }
%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", "");

        if (request.getParameter("btn_login") != null) {
            String dbemail, dbpassword, dbid;

            String email, password;

            email = request.getParameter("txt_email");
            password = request.getParameter("txt_password");

            PreparedStatement pstmt = con.prepareStatement("select * from registro where email=? AND password=?");
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                dbemail = rs.getString("email");
                dbpassword = rs.getString("password");
                dbid = rs.getString("id_registro");

                if (email.equals(dbemail) && password.equals(dbpassword)) {
                    session.setAttribute("registro", dbemail);
                    session.setAttribute("id_registro", dbid);
                    response.sendRedirect("principal.jsp");
                }
            } else {
                request.setAttribute("errorMsg", "Correo o contraseña inválidos");
            }

            con.close();
        }

    } catch (Exception e) {
        out.println(e);
    }
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
       
        <style>
            body {
            
                

            }

            .container {

       

                border-radius: 10px;
               
               
                margin-top: 100px;
            }

            h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            label {
                display: block;
                margin-bottom: 5px;
                color: #333;
            }

            input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            button {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-top:20px;
            }

            button:hover {
                background-color: #0056b3;
            }
            
            
            .container img{
                
                width: 100%;
                height: auto;
                object-fit: cover;
                margin-bottom: -50px;
            }
            
            
            
            
        </style>
    </head>
    <body>
        <div class="container">
            
            
            <div class="row">
            
                    <div class="col-md-6">
                        <img src="img/1f.png">
                        <%
                            if (request.getAttribute("errorMsg") != null) {
                                String errorMsg = (String) request.getAttribute("errorMsg");
                        %>
                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                showError("<%= errorMsg%>");
                            });
                        </script>
                        <%
                            }
                        %>
                    </div> 
                    
                    <div class="col-md-6" style="margin-top:200px;">
                        <form method="post" name="myform" onsubmit="return validate();">
                            <div class="form-group">
                                <small class="form-text text-muted">Correo</small>
                                <input type="email" id="email"  name="txt_email" required>                   
                            </div>
                            <div class="form-group">
                                <small class="form-text text-muted">Contraseña</small>
                                <input type="password" id="password"  name="txt_password" required>
                            </div>
                            <button type="submit" style="background-color: black;" name="btn_login">Ingresar</button>
                        </form>
                    </div> 
                        
            <hr><a href="registro.jsp" class="form-log-in-with-existing" style='text-decoration: none; color: black;'>No tienes una cuenta? <b> Regístrate Aquí </b></a>
            
            </div> 
            
        </div>
            
            
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                function showError(message) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: message
                    });
                }

                function validate() {
                    var email = document.getElementById('email');
                    var password = document.getElementById('password');

                    if (email.value == null || email.value == "") {
                        showError("Por favor ingresa tu correo");
                        email.style.background = '#f08080';
                        email.focus();
                        return false;
                    }
                    if (password.value == null || password.value == "") {
                        showError("Por favor ingresa tu contraseña");
                        password.style.background = '#f08080';
                        password.focus();
                        return false;
                    }
                    return true;
                }
            </script>  
            
            
    </body>
