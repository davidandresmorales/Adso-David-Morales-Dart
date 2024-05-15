import 'dart:io';

void main() {
  print("Por favor, ingrese 10 números:");
  
  List<int> numeros = [];
  for (var i = 0; i < 10; i++) {
    stdout.write("Número ${i + 1}: ");
    var numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  print("Los números positivos son:");
  for (var numero in numeros) {
    if (numero > 0) {
      print(numero);
    }
  }
}
