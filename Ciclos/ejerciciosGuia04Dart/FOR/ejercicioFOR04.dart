import 'dart:io';

void main() {
  int suma = 0;
  int producto = 1;
  int numero;

  print("Ingrese 5 números enteros:");

  for (int i = 0; i < 5; i++) {
    stdout.write("Número ${i + 1}: ");
    numero = int.parse(stdin.readLineSync()!);
    
    suma += numero;
    producto *= numero;
  }

  print("\nSuma de los números: $suma");
  print("Producto de los números: $producto");
}
