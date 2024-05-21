import 'dart:io';

void main() {
  stdout.write("Ingrese el número total de números: ");
  var totalNumeros = int.parse(stdin.readLineSync()!);

  var menorValor = double.infinity;

  var contadorNumeros = 0;

  while (contadorNumeros < totalNumeros) {
    stdout.write("Ingrese el número ${contadorNumeros + 1}: ");
    var numero = double.parse(stdin.readLineSync()!);

    if (numero < menorValor) {
      menorValor = numero;
    }

    contadorNumeros++;
  }

  print("\nEl menor valor entre los $totalNumeros números ingresados es: $menorValor");
}
