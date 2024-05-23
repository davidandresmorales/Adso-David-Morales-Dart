import 'dart:io';

void main() {
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;

  print("Por favor, ingrese 20 números:");
  
  for (int i = 0; i < 20; i++) {
    stdout.write("Número ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    
    if (numero > 0) {
      positivos++;
    } else if (numero < 0) {
      negativos++;
    } else {
      ceros++;
    }
  }

  print("\nResultados:");
  print("Cantidad de números positivos: $positivos");
  print("Cantidad de números negativos: $negativos");
  print("Cantidad de ceros: $ceros");
}
