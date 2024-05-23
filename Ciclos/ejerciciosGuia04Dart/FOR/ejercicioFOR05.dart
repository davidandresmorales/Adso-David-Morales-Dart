import 'dart:io';

void main() {
  stdout.write("Por favor, ingrese un número para calcular su tabla de multiplicar: ");
  int numero = int.parse(stdin.readLineSync()!);
  
  print("\nTabla de multiplicar del $numero:");
  
  for (int i = 1; i <= 10; i++) {
    int producto = numero * i;
    print("$numero x $i = $producto");
  }
}
