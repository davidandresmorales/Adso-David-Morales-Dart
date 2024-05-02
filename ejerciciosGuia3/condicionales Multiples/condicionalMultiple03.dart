import 'dart:io';
import 'dart:math'; // Importa el paquete de matemáticas

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 03

  // DEFINICIÓN DE VARIABLES
  double valor;
  int operacion;

  // ENTRADA DE DATOS
  print("Ingrese un número (Valor):");
  valor = double.parse(stdin.readLineSync()!);
  
  print("Ingrese otro número (Operación):");
  operacion = int.parse(stdin.readLineSync()!);

  // PROCESAMIENTO
  double resultado = calcularResultado(valor, operacion);

  // SALIDA
  print("El resultado de la operación es: $resultado");
}

double calcularResultado(double valor, int operacion) {
  double resultado;

  switch (operacion) {
    case 1:
      resultado = 100 * valor;
      break;
    case 2:
      resultado = pow(100, valor).toDouble(); // Convertir el resultado a double
      break;
    case 3:
      if (valor == 0) {
        print("El segundo valor no puede ser cero para la operación de división.");
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
