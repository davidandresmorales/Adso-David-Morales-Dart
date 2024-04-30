import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 10
  //DEFINICION VARIABLES
  int edad; 
  double nivelHemoglobina;
  String resultado, genero, opcionEdad;
  //ENTRADA ALGORITMO
  print("Cual es su edad");
  print("La persona es mayor de un año? (SI) - (NO)");
  opcionEdad = stdin.readLineSync()!;
  print("Cual es su genero Hombre(H) y Mujer(M)");
  genero = stdin.readLineSync()!;
  print("Cual es su nivel de hemoglobina");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (opcionEdad?.toUpperCase() == "SI") {
    print("Ingrese su edad en años");
    edad = int.parse(stdin.readLineSync()!);
    if(edad <= 5){
      //Menor o igual a 5
      if (nivelHemoglobina <= 11.5) {
        resultado = "Amnesia";
      } else if (nivelHemoglobina > 15) {
        resultado = "Cardiopatia";
      } else {
        resultado = "normal";
      }
    }
  } else {
    print("Ingrese la edad del bebé en meses");
    edad = int.parse(stdin.readLineSync()!);
  }
}
