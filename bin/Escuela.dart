import 'Estudiante.dart';
class Escuela {
  List<Estudiante> estudiantes = [];

  // Método para agregar un estudiante
  void agregarEstudiante(Estudiante estudiante) {
    estudiantes.add(estudiante);
  }

  // Método para obtener el promedio de calificaciones de cada estudiante
  List<Map<String, dynamic>> promediosEstudiantes() {
    return estudiantes.map((estudiante) {
      return {
        'nombre': estudiante.nombre,
        'promedio': estudiante.calcularPromedio(),
      };
    }).toList();
  }

  // Método para determinar la calificación más alta y más baja por asignatura
  Map<String, double> calificacionesExtremas() {
    double maxMatematica = double.negativeInfinity;
    double minMatematica = double.infinity;
    double maxFisica = double.negativeInfinity;
    double minFisica = double.infinity;

    for (var estudiante in estudiantes) {
      // Para Matemáticas
      if (estudiante.notaMatematica > maxMatematica) {
        maxMatematica = estudiante.notaMatematica;
      }
      if (estudiante.notaMatematica < minMatematica) {
        minMatematica = estudiante.notaMatematica;
      }

      // Para Física
      if (estudiante.notaFisica > maxFisica) {
        maxFisica = estudiante.notaFisica;
      }
      if (estudiante.notaFisica < minFisica) {
        minFisica = estudiante.notaFisica;
      }
    }

    return {
      'MatematicaMaxima': maxMatematica,
      'MatematicaMinima': minMatematica,
      'FisicaMaxima': maxFisica,
      'FisicaMinima': minFisica,
    };
  }

  // Método para mostrar estudiantes con promedio superior a un valor dado
  List<Estudiante> mostrarEstudiantesConPromedioSuperiorA(double valor) {
    return estudiantes.where((estudiante) => estudiante.calcularPromedio() > valor).toList();
  }

  // Método para ordenar estudiantes por promedio
  List<Estudiante> ordenarEstudiantesPorPromedio({bool ascendente = true}) {
    estudiantes.sort((a, b) => ascendente
        ? a.calcularPromedio().compareTo(b.calcularPromedio())
        : b.calcularPromedio().compareTo(a.calcularPromedio()));
    return estudiantes;
  }
}
