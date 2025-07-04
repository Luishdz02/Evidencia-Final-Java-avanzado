<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="imc-container">
    <h2>Tu IMC Actual: <span class="imc-value">${ultimoRegistro.imc}</span></h2>
    <p>Clasificación: <span class="clasificacion">${clasificacion}</span></p>
    
    <form action="imc" method="post">
        <label>Ingresa tu peso (kg):</label>
        <input type="number" step="0.1" min="1" name="peso" required>
        <button type="submit">Calcular</button>
    </form>
    
    <div id="historial-container">
        <table id="historial-table">
            <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Peso</th>
                    <th>IMC</th>
                    <th>Clasificación</th>
                </tr>
            </thead>
            <tbody>
                <!-- Datos cargados via AJAX -->
            </tbody>
        </table>
    </div>
</div>

<script>
$(document).ready(function() {
    $.getJSON("api/imc/historial/${usuario.id}", function(data) {
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" 
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    
    <groupId>com.mycompany</groupId>
    <artifactId>Evidencia1IMCApp</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>war</packaging>
    
    <name>Evidencia1IMCApp</name>
    
    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
        <jakartaee>11.0.0</jakartaee>
    </properties>
    
    <dependencies>
        <!-- Jakarta EE 11 API -->
        <dependency>
            <groupId>jakarta.platform</groupId>
            <artifactId>jakarta.jakartaee-api</artifactId>
            <version>${jakartaee}</version>
            <scope>provided</scope>
        </dependency>

        <!-- MySQL Connector -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.33</version>
        </dependency>

        <!-- Jersey para REST -->
        <dependency>
            <groupId>org.glassfish.jersey.containers</groupId>
            <artifactId>jersey-container-servlet</artifactId>
            <version>3.1.2</version>
        </dependency>
        <dependency>
            <groupId>org.glassfish.jersey.inject</groupId>
            <artifactId>jersey-hk2</artifactId>
            <version>3.1.2</version>
        </dependency>

        <!-- JSTL para JSP -->
        <dependency>
            <groupId>jakarta.servlet.jsp.jstl</groupId>
            <artifactId>jakarta.servlet.jsp.jstl-api</artifactId>
            <version>3.0.0</version>
        </dependency>
        <dependency>
            <groupId>org.glassfish.web</groupId>
            <artifactId>jakarta.servlet.jsp.jstl</artifactId>
            <version>3.0.1</version>
        </dependency>
    </dependencies>
    
    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.12.1</version>
                <configuration>
                    <source>17</source>
                    <target>17</target>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-war-plugin</artifactId>
                <version>3.4.0</version>
            </plugin>
        </plugins>
    </build>
</project>