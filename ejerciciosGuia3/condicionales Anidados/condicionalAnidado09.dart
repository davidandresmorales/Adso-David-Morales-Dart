import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 09
  /*El fondo de administración de pensiones requiere clasificar a las personas que
  se jubilaran en el año 2009. Existen tres tipos de jubilaciones: por edad,
  por antigüedad joven y por antigüedad adulta. Las personas adscritas a la jubilación
  por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años.
  Las  personas adscritas  a  la  jubilación  por  antigüedad  joven deben  tener menos de  60  años
  y  una antigüedad en su empleo de 25 años o más.Las  personas  adscritas  a  la  jubilación
  por  antigüedad  adulta  deben  tener  60  años  o  mas  y  una antigüedad en su empleo de
  25 años o mas.Determinar en que tipo de jubilación, quedara adscrita una persona. */
  // Definición Variables
  int edad;
  int antiguedad;
  String tipoJubilacion;

  // Entrada Algoritmo
  print("Ingrese la edad de la persona:");
  edad = int.parse(stdin.readLineSync()!);
  
  print("Ingrese la antigüedad en su empleo:");
  antiguedad = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (edad >= 60) {
    // Si la persona tiene 60 años o más
    if (antiguedad < 25) {
      // Si la antigüedad en su empleo es menos de 25 años
      tipoJubilacion = "por edad";
    } else {
      // Si la antigüedad en su empleo es de 25 años o más
      tipoJubilacion = "por antigüedad adulta";
    }
  } else {
    // Si la persona tiene menos de 60 años
    if (antiguedad >= 25) {
      // Si la antigüedad en su empleo es de 25 años o más
      tipoJubilacion = "por antigüedad joven";
    } else {
      // Si la antigüedad en su empleo es menos de 25 años
      tipoJubilacion = "por edad";
    }
  }

  // Salida Algoritmo
  print("La persona quedará adscrita a la jubilación $tipoJubilacion.");
}
