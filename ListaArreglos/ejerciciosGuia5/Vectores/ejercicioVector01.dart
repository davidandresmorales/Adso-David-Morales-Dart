import 'dart:io';

void main(List<String> args) {
  // David Andres Morales - ejer vector 1
  /*
 Calcular  el  promedio  de  10  valores  almacenados  en  un  vector.  Determinar  además  cuantos  son mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una lista de valores mayores que el promedio.
  */
  //se define una lista vacía
  List<double> numeros = [];
  List<double> mayoresprom = [];
  int cantNumeros = 10;
  double num, sumaNumeros = 0, promedio;
  // ciclo para llenar el vector
  for (var i = 0; i < cantNumeros; i++) {
    print("ingrese el numero #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num); //se ingresa el numero a la lista
    sumaNumeros += num;
  }
  promedio = sumaNumeros / numeros.length;
  print(numeros);
  print("El promedio es: $promedio");
  // Ciclo para llenar el promedio
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] > promedio) {
      mayoresprom.add(numeros[i]);
    }
  }
  print("la cantidad de mayores al promedio es: ${mayoresprom.length}");
  print("la lista de los numeros mayores al promedio es:");
  print(mayoresprom);
}