package model;

import java.util.Date;

public class RegistroIMC {
    private int id;
    private int usuarioId;
    private Date fecha;
    
    @Min(value = 1, message = "Peso debe ser mayor a 0")
    private double peso;
    
    private double imc;
    
    // Getters y Setters
}