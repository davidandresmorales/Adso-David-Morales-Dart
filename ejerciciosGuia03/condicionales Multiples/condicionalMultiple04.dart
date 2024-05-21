import 'dart:io';
import 'dart:math';

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 04
  /*   |x ^ 2     | Si (x) mod 4 = 0 
  f(x) |x / 6     | Si (x) mod 4 = 1
       |Raíz(x)   | Si (x) mod 4 = 2
       |X ^ 3 + 5 | Si (x) mod 4 = 3*/
  // Definición Variables
  double x;
  // Entrada Algoritmo
  print("Ingrese el valor de x:");
  x = double.parse(stdin.readLineSync()!);
  // Proceso Algoritmo
  double resultado;
  int resto = x.toInt() % 4;
  switch (resto) {
    case 0:
      // Si (x) mod 4 = 0
      resultado = pow(x, 2).toDouble(); 
      break;
    case 1:
      // Si (x) mod 4 = 1
      resultado = x / 6;
      break;
    case 2:
      // Si (x) mod 4 = 2
      resultado = sqrt(x);
      break;
    case 3:
      // Si (x) mod 4 = 3
      resultado = pow(x, 3).toDouble() + 5; 
      break;
    default:
      resultado = 0;
      break;
  }

  // Salida Algoritmo
  print("El valor de f(x) es: $resultado");
}
