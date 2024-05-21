import 'dart:io';

void main(List<String> args) {
  /*
  Pedir al usuario n notas ingresadas
  por el usuario. si el promedio es mayor 
  a 3, decir que el estudiante aprobó el 
  trimestre, sino que indique que reprobó
  */
  int cantNotas;
  double nota, suma = 0, promedio;
  print("Ingrese la cantidad de notas");
  cantNotas = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < cantNotas; i++) {
    print("Escriba el valor de cada nota en orden " + (i + 1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }
  promedio = suma / cantNotas;
  if (promedio > 3) {
    print("Aprobo el trimestre");
  } else {
    print("No aprobo el trimestre");
  }
}
