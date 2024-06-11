import 'dart:io';
//David Andres Morales - ejercicio Matriz 1
//1.Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números almacenados en la matriz.
void main(List<String> args) {
  List<List<double>> matriz = [];
  double suma = 0;
  int cantFilas = 2, cantColumnas = 3;

  for (int i = 0; i < cantFilas; i++) {
    List<double> fila = [];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el numero $i,$j");
      fila.add(double.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }
  // Ciclo para recorrer y generar la suma
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[0].length; j++) {
      suma += matriz[i][j];
    }
  }
  print(matriz);
  print("la suma de los elementos de la matriz es: $suma");
}
