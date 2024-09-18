import 'dart:io';
//David Andres Morales - ejercicio Matriz 2

void main() {
  List<List<int>> matriz = [];
  int cantFilas = 10, cantColumnas = 10;

  for (int i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el número en la posición [$i, $j]:");
      fila.add(int.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }

  int maximo = matriz[0][0];
  List<int> posicion = [0, 0];
  
  for (int i = 0; i < cantFilas; i++) {
    for (int j = 0; j < cantColumnas; j++) {
      if (matriz[i][j] > maximo) {
        maximo = matriz[i][j];
        posicion = [i, j];
      }
    }
  }

  print("Matriz generada:");
  for (var fila in matriz) {
    print(fila);
  }

  print("El número mayor es $maximo y se encuentra en la posición [fila, columna] $posicion");
}
