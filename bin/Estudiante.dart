class Estudiante {
  String nombre;
  double notaMatematica;
  double notaFisica;

  Estudiante({
    required this.nombre,
    required this.notaMatematica,
    required this.notaFisica,
  });

  // Método para calcular el promedio del estudiante
  double calcularPromedio() {
    return (notaMatematica + notaFisica) / 2;
  }
}