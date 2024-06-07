

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
 Connection conexion = null;
 PreparedStatement st = null;
 ResultSet rs = null;
//Leemos el driver MySQL
 Class.forName("com.mysql.jdbc.Driver");
//Obtenemos la conexion con la base de datos
 conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/capyy", "root", "");
  //conexion = DriverManager.getConnection("jdbc:mysql://34.29.72.14:3306/capri", "admin", "admin");
%>
