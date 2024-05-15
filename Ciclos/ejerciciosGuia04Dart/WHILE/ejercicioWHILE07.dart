import 'dart:io';

void main() {
  // Solicitar el número total de números
  stdout.write("Ingrese el número total de números: ");
  var totalNumeros = int.parse(stdin.readLineSync()!);

  // Inicializar el menor valor con un valor muy grande para comparación inicial
  var menorValor = double.infinity;

  // Inicializar el contador de números ingresados
  var contadorNumeros = 0;

  // Encontrar el menor valor entre los números dados
  while (contadorNumeros < totalNumeros) {
    stdout.write("Ingrese el número ${contadorNumeros + 1}: ");
    var numero = double.parse(stdin.readLineSync()!);

    // Verificar si el número ingresado es menor que el menor valor actual
    if (numero < menorValor) {
      menorValor = numero;
    }

    // Incrementar el contador de números ingresados
    contadorNumeros++;
  }

  // Mostrar el resultado
  print("\nEl menor valor entre los $totalNumeros números ingresados es: $menorValor");
}
