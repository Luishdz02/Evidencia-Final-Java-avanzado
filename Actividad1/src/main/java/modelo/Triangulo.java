package modelo;

public class Triangulo {
    private double base;
    private double altura;

    // Constructor
    public Triangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    // Métodos
    public double calcularArea() {
        return (base * altura) / 2;
    }

    public double calcularPerimetro() {
        return 3 * base;
    }
}
