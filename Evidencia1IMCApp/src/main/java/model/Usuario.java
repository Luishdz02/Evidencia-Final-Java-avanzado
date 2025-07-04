package model;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "usuarios")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @NotEmpty(message = "Nombre completo es requerido")
    private String nombre;
    
    @Column(unique = true)
    @Size(min = 4, max = 20, message = "Username debe tener entre 4 y 20 caracteres")
    private String username;
    
    @Size(min = 6, message = "Password debe tener al menos 6 caracteres")
    private String password;
    
    @Min(value = 15, message = "Edad mínima 15 años")
    private int edad;
    
    private String sexo;
    
    @DecimalMin(value = "1.0", message = "Estatura mínima 1m")
    @DecimalMax(value = "2.5", message = "Estatura máxima 2.5m")
    private double estatura;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaRegistro;
    
    @OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)
    private List<RegistroIMC> registros;
    
    // Getters y Setters
}