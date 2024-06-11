import 'dart:io';

void main() {
  List<List<int>> matriz1 = solicitarValores("Matriz 1");
  List<List<int>> matriz2 = solicitarValores("Matriz 2");

  print("Matriz 1:");
  mostrarMatriz(matriz1);
  print("Matriz 2:");
  mostrarMatriz(matriz2);

  List<List<int>> resultado = multiplicarMatrices(matriz1, matriz2);

  print("Resultado de la multiplicación:");
  mostrarMatriz(resultado);

  print("Suma de cada fila:");
  calcularSumaFilas(resultado);

  print("Suma de cada columna:");
  calcularSumaColumnas(resultado);
}

List<List<int>> solicitarValores(String nombreMatriz) {
  print("Ingrese los valores para la $nombreMatriz:");

  List<List<int>> matriz = List.generate(3, (_) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print("Ingrese el valor en la posición [$i, $j]:");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  return matriz;
}

void mostrarMatriz(List<List<int>> matriz) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print("");
  }
}

List<List<int>> multiplicarMatrices(List<List<int>> matriz1, List<List<int>> matriz2) {
  List<List<int>> resultado = List.generate(3, (_) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      for (int k = 0; k < 3; k++) {
        resultado[i][j] += matriz1[i][k] * matriz2[k][j];
      }
    }
  }

  return resultado;
}

void calcularSumaFilas(List<List<int>> matriz) {
  for (int i = 0; i < 3; i++) {
    int suma = 0;
    for (int j = 0; j < 3; j++) {
      suma += matriz[i][j];
    }
    print("Suma fila $i: $suma");
  }
}

void calcularSumaColumnas(List<List<int>> matriz) {
  for (int j = 0; j < 3; j++) {
    int suma = 0;
    for (int i = 0; i < 3; i++) {
      suma += matriz[i][j];
    }
    print("Suma columna $j: $suma");
  }
}
