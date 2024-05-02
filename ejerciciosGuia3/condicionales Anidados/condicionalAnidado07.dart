import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 07
  /*Leer 2 números; si son iguales que los multiplique, si el primero
  es mayor que el segundo que los reste y si no que los sume.*/
  // DEFINICIÓN DE VARIABLES
  double numero1, numero2, resultado;

  // ENTRADA DEL ALGORITMO
  stdout.write("Ingrese el primer número: ");
  numero1 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  numero2 = double.parse(stdin.readLineSync()!);

  // PROCESO-SALIDA ALGORITMO
  if (numero1 == numero2) {
    resultado = numero1 * numero2;
    print("Los números son iguales. Su multiplicación es: $resultado");
  } else {
    if (numero1 > numero2) {
      resultado = numero1 - numero2;
      print("El primer número es mayor que el segundo. La resta es: $resultado");
    } else {
      resultado = numero1 + numero2;
      print("El primer número es menor que el segundo. La suma es: $resultado");
    }
  }
}
