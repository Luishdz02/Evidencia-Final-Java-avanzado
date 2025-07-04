<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Triángulo Equilátero</title>
    </head>
    <body>
        <h1>Calcular Área y Perímetro</h1>
        <form action="calcular.jsp" method="post">
            Base: <input type="number" name="base" step="any" required><br>
            Altura: <input type="number" name="altura" step="any" required><br>
            <input type="submit" value="Calcular">
        </form>
    </body>
</html>