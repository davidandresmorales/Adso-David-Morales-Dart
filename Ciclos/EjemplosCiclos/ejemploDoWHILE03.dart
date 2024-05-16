import 'dart:io';

void main(List<String> args) {
//David Andres Morales Ejem DoWHILE 3
/*
Realizar un algoritmo que permita solicitar una clave numérica al 
usuario y no permitir continuar hasta que no ingrese la clave válida
*/
//Definicion Variables
int claveNumerica = 246, claveIngresada;
//Entrada Algoritmo
print("Digite la clave del banco");
do {
  claveIngresada = int.parse(stdin.readLineSync()!);
  if (claveIngresada != claveNumerica) {
    print("La clave numérica es incorrecta");
  } else {
    print("La clave del banco es correcta");
  }
} while (claveIngresada != claveNumerica);
}