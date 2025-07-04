<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Triangulo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <h1>Resultados del Cálculo</h1>
        <%
            double base = Double.parseDouble(request.getParameter("base"));
            double altura = Double.parseDouble(request.getParameter("altura"));
            Triangulo t = new Triangulo(base, altura);
        %>
        <p>Área: <%= t.calcularArea() %></p>
        <p>Perímetro: <%= t.calcularPerimetro() %></p>
        <a href="index.jsp">Volver</a>
    </body>
</html>
