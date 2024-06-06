import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  //David Andres Morales - eje vector 2
  /*
  Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  elemento  uno  del  vector  A  con  el 
  elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante.
  */
  //Definiciones Variables
 
  List<double> numeroA = [];
  List<double> numeroB = [];
  List<double> numeros = [];
  double num, sumaNumeros = 0, cantNumeros = 0;
  for (var i = 0; i < cantNumeros; i++) {
  print("ingrese un numero #${i +1}");
  num = double.parse(stdin.readLineSync()!);
  numeros.add(num); 
  }
}