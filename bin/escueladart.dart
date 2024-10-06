import 'package:escueladart/escueladart.dart' as escueladart;
import 'Escuela.dart';
import 'Estudiante.dart';

void main(List<String> arguments) {
  // Crear una instancia de Escuela
  var escuela = Escuela();

  // Agregar estudiantes
  escuela.agregarEstudiante(Estudiante(nombre: 'Carlos', notaMatematica: 85, notaFisica: 90));
  escuela.agregarEstudiante(Estudiante(nombre: 'Ana', notaMatematica: 95, notaFisica: 88));
  escuela.agregarEstudiante(Estudiante(nombre: 'Luis', notaMatematica: 70, notaFisica: 75));

  // Calcular y mostrar promedios de calificaciones de cada estudiante
  print('Promedios de estudiantes:');
  var promedios = escuela.promediosEstudiantes();
  for (var info in promedios) {
    print('${info['nombre']}: ${info['promedio'].toStringAsFixed(2)}');
  }

  // Determinar calificaciones extremas
  var calificaciones = escuela.calificacionesExtremas();
  print('\nCalificaciones extremas:');
  print('Matemáticas: Maxima: ${calificaciones['MatematicaMaxima']}, Minima: ${calificaciones['MatematicaMinima']}');
  print('Física: Maxima: ${calificaciones['FisicaMaxima']}, Minima: ${calificaciones['FisicaMinima']}');

  // Mostrar estudiantes con promedio superior a un valor dado
  var estudiantesAltos = escuela.mostrarEstudiantesConPromedioSuperiorA(80);
  print('\nEstudiantes con promedio superior a 80:');
  for (var estudiante in estudiantesAltos) {
    print(estudiante.nombre);
  }

  // Ordenar estudiantes por promedio de forma ascendente
  var estudiantesOrdenadosAsc = escuela.ordenarEstudiantesPorPromedio(ascendente: true);
  print('\nEstudiantes ordenados por promedio (ascendente):');
  for (var estudiante in estudiantesOrdenadosAsc) {
    print('${estudiante.nombre}: ${estudiante.calcularPromedio().toStringAsFixed(2)}');
  }

  // Ordenar estudiantes por promedio de forma descendente
  var estudiantesOrdenadosDesc = escuela.ordenarEstudiantesPorPromedio(ascendente: false);
  print('\nEstudiantes ordenados por promedio (descendente):');
  for (var estudiante in estudiantesOrdenadosDesc) {
    print('${estudiante.nombre}: ${estudiante.calcularPromedio().toStringAsFixed(2)}');
  }
}
