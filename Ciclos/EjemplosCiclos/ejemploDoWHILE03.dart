import 'dart:io';

void main() {
/*Realizar un algoritmo que permita solicitar una clave númerica al usuario y no permita continuar hasta que no ingrese la clave */
//Declaración 
int claveCorrecta=1234;
int clave, contador= 0;

//PROCESO 
do {
  print("Ingrese la clave");
  clave= int.parse(stdin.readLineSync()!);

  if (clave==1234 ){
    print("La clave es correcta");
  } else {
    print("La clave es incorrecta");
  }
}while (claveCorrecta!=clave);

//Salida
}