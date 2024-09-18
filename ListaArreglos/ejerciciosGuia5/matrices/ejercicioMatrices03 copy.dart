import 'dart:io';
//David Andres Morales - ejercicio Matriz 3

void main() {
  int numArticulos = 5;
  int numTurnos = 3;

  List<String> nombresArticulos = List.filled(numArticulos, '');
  List<List<int>> produccion = List.generate(numArticulos, (_) => List.filled(numTurnos, 0));

  for (int i = 0; i < numArticulos; i++) {
    print('Ingrese el nombre del artículo ${i + 1}:');
    nombresArticulos[i] = stdin.readLineSync()!;
    for (int j = 0; j < numTurnos; j++) {
      print('Ingrese la producción del artículo "${nombresArticulos[i]}" en el turno ${j + 1}:');
      produccion[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  List<int> totalProduccionPorArticulo = List.filled(numArticulos, 0);
  List<int> totalProduccionPorTurno = List.filled(numTurnos, 0);

  for (int i = 0; i < numArticulos; i++) {
    for (int j = 0; j < numTurnos; j++) {
      totalProduccionPorArticulo[i] += produccion[i][j];
      totalProduccionPorTurno[j] += produccion[i][j];
    }
  }

  int maxProduccion = totalProduccionPorArticulo[0];
  int indiceMaxProduccion = 0;
  for (int i = 1; i < numArticulos; i++) {
    if (totalProduccionPorArticulo[i] > maxProduccion) {
      maxProduccion = totalProduccionPorArticulo[i];
      indiceMaxProduccion = i;
    }
  }

  print('\nReporte de Producción:');
  for (int i = 0; i < numArticulos; i++) {
    print('Total producción del artículo "${nombresArticulos[i]}": ${totalProduccionPorArticulo[i]}');
  }
  for (int j = 0; j < numTurnos; j++) {
    print('Total producción en el turno ${j + 1}: ${totalProduccionPorTurno[j]}');
  }
  print('El artículo con mayor producción es "${nombresArticulos[indiceMaxProduccion]}" con una producción de $maxProduccion unidades.');
}
