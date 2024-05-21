import 'dart:io';

void main(List<String> args) {
  // Definir variables
  String genero;
  int contador = 0, numPersonas, contadorHombre = 0, contadorMujer = 0;

  // Entrada
  print("Digite el número de personas");
  numPersonas = int.parse(stdin.readLineSync()!);

  // Proceso
  while (contador < numPersonas) {
    for (int i = 0; i < numPersonas; i++) {
      print("Digite el género de la persona");
      genero = stdin.readLineSync()!.toUpperCase();
      if (genero == "M") {
        contadorHombre++;
      } else if (genero == "F") {
        contadorMujer++;
      }
      contador++;
    }
    print("Hay $contadorHombre hombres");
    print("Hay $contadorMujer mujeres");
  }
}
