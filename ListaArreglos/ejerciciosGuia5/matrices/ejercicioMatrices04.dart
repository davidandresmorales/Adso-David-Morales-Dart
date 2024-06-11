import 'dart:io';

void main() {
  print('Ingrese las dimensiones deseadas para el cuadro mágico:');
  int dimension = int.parse(stdin.readLineSync()!);

  List<List<int>> cuadroMagico = List.generate(dimension, (_) => List.filled(dimension, 0));

  print('Ingrese los números para llenar el cuadro mágico:');
  for (int i = 0; i < dimension; i++) {
    for (int j = 0; j < dimension; j++) {
      print("Ingrese el número en la posición [$i, $j]:");
      cuadroMagico[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  int sumaFila = cuadroMagico[0].reduce((value, element) => value + element);

  int sumaColumna = 0;
  for (int i = 0; i < dimension; i++) {
    sumaColumna += cuadroMagico[i][0];
  }

  int sumaDiagonalPrincipal = 0;
  for (int i = 0; i < dimension; i++) {
    sumaDiagonalPrincipal += cuadroMagico[i][i];
  }

  int sumaDiagonalSecundaria = 0;
  for (int i = 0; i < dimension; i++) {
    sumaDiagonalSecundaria += cuadroMagico[i][dimension - 1 - i];
  }

  if (sumaFila == sumaColumna && sumaFila == sumaDiagonalPrincipal && sumaFila == sumaDiagonalSecundaria) {
    print('¡Felicidades! Has creado un cuadro mágico.');
  } else {
    print('Modifica los números en el cuadro para que sea mágico.');
  }
}
