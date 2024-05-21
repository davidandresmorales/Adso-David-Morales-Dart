import 'dart:io';
import 'dart:math'; // Importa el paquete de matemáticas

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 03
  /*Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:
    Val     | Num
    100 * v | 1
    100^v   | 2
    100 / v | 3
    0       | Cualquier número
   */
  // DEFINICIÓN DE VARIABLES
  double valor;
  int operacion;

  // ENTRADA AlGORITMO
  print("Ingrese un número (Valor):");
  valor = double.parse(stdin.readLineSync()!);
  
  print("Ingrese otro número (Operación):");
  operacion = int.parse(stdin.readLineSync()!);

  // PROCESO ALGORITMO
  double resultado = calcularResultado(valor, operacion);

  // SALIDA ALGORITMO
  print("El resultado de la operación es: $resultado");
}

double calcularResultado(double valor, int operacion) {
  double resultado;

  switch (operacion) {
    case 1:
      resultado = 100 * valor;
      break;
    case 2:
      resultado = pow(100, valor).toDouble(); 
      break;
    case 3:
      if (valor == 0) {
        print("El segundo valor no deberia ser cero para la operación de división.");
        return 0;
      }
      resultado = 100 / valor;
      break;
    default:
      resultado = 0;
      break;
  }

  return resultado;
}
