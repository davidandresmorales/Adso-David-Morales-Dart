import 'dart:io';

void main() {
  // Solicitar el número total de números
  stdout.write("Ingrese el número total de números: ");
  var totalNumeros = int.parse(stdin.readLineSync()!);

  // Inicializar el mayor valor con un valor muy pequeño para comparación inicial
  var mayorValor = -double.infinity;

  // Inicializar el contador de números ingresados
  var contadorNumeros = 0;

  // Encontrar el mayor valor entre los números dados
  while (contadorNumeros < totalNumeros) {
    stdout.write("Ingrese el número ${contadorNumeros + 1}: ");
    var numero = double.parse(stdin.readLineSync()!);

    // Verificar si el número ingresado es mayor que el mayor valor actual
    if (numero > mayorValor) {
      mayorValor = numero;
    }

    // Incrementar el contador de números ingresados
    contadorNumeros++;
  }

  // Mostrar el resultado
  print("\nEl mayor valor entre los $totalNumeros números ingresados es: $mayorValor");
}
