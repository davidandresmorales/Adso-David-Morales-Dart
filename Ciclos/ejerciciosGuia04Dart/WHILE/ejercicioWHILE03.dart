import 'dart:io';

void main(List<String> args) {
// David Andres Morales - EJE WHILE 03
  /*

  */

  //Definir variables
  String genero;
  int contador = 0, numPersonas, contadorHombre = 0, contadorMujer = 0;

  //Entrada
  print("Ingrese el numero de personas");
  numPersonas = int.parse(stdin.readLineSync()!);
  while (contador < numPersonas) {
    for (int i = 0; i < numPersonas; i++) {
      print("Ingrese el genero de la persona");
      genero = stdin.readLineSync()!;
      if (genero == "H") {
        contadorHombre++;
      } else if (genero == "M") {
        contadorMujer++;
      }
      contador++;
    }
    print("Hay $contadorHombre hombres");
    print("Hay $contadorMujer mujeres");
  }
}