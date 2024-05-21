import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 06
  /*Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días 
  tiene. Es necesario tener en cuenta si es año bisiesto o no.*/
  // Definición Variables
  String nombreMes;
  int anio;
  int diasEnMes;

  // Entrada Algoritmo
  print("Ingrese el nombre del mes:");
  nombreMes = stdin.readLineSync()!;
  
  print("Ingrese el año:");
  anio = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  switch (nombreMes.toLowerCase()) {
    case "enero":
    case "marzo":
    case "mayo":
    case "julio":
    case "agosto":
    case "octubre":
    case "diciembre":
      diasEnMes = 31;
      break;
    case "abril":
    case "junio":
    case "septiembre":
    case "noviembre":
      diasEnMes = 30;
      break;
    case "febrero":
      if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
        diasEnMes = 29; // Año bisiesto
      } else {
        diasEnMes = 28; // No es año bisiesto
      }
      break;
    default:
      diasEnMes = 0;
      break;
  }

  // Salida Algoritmo
  if (diasEnMes > 0) {
    print("El mes de $nombreMes en el año $anio tiene $diasEnMes días.");
  } else {
    print("El nombre del mes ingresado es inválido.");
  }
}
