import 'dart:io';

void main(List<String> args) {
  // David Andres Morales - EJER ciclos FOR 02
  /*
  Leer 10 números e imprimir solamente los números positivos
  */
  // Definición de variables
  double numero = 0;
  
  // Entrada y Proceso
  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite el número $i: ");
    numero = double.parse(stdin.readLineSync()!);
    // Salida
    if (numero > 0) {
      print("El número $numero es positivo");
    }
  }
}
