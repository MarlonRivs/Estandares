<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    // Obtener la sesión actual


    // Invalidar la sesión (cerrar sesión)
    session.invalidate();

    // Redirigir al usuario a una página de confirmación o a donde desees
    response.sendRedirect("login.jsp"); // Página de inicio o cualquier otra página que desees
%>
