import 'dart:io';

void main(List<String> args) {
<<<<<<< HEAD
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
=======
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
>>>>>>> 5397a564372fcc42b1052ed742b2857bbd44296f
        contadorMujer++;
      }
      contador++;
    }
    print("Hay $contadorHombre hombres");
    print("Hay $contadorMujer mujeres");
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 5397a564372fcc42b1052ed742b2857bbd44296f
