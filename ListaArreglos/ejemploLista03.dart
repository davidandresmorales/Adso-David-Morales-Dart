import 'dart:io';

void main(List<String> args) {
  //Agregar elementos a la Lista - ADD

  List<String> nombres = [];
  String? nombre;
  //Ciclo para llenar nombres
  for (int i = 0; i < 10; i++) {
    print("Digite el nombre #${i + 1}");
    nombre = stdin.readLineSync()!;
    nombres.add(nombre);// Agrega elemento al final de la lista
    print(nombres);
  }
  print('*' * 30);
  print(nombres);

  // Recorrer la lista para mostrar elementos
  for (int i = 0; i < nombres.length; i++) {
    print("Nombre #${i+1}: ${nombres[i]}");
  }
}