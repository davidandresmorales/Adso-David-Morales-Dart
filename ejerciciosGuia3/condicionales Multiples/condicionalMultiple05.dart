import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 05
  /* El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
   país destino, y del número de minutos hablados.

   En la siguiente tabla se presenta el costo por minuto por zona. 
   A cada uno se le ha asociado una clave.
   
    Clave |   Zona            | Precio
    12    | América del Norte | 200
    15    | América Central   | 220
    18    | América del Sur   | 450
    19    | Europa            | 350
    23    | Asia              | 600
    25    | África            | 600
    29    | Oceanía           | 500

    Construya la solución para calcular e imprimir el costo de una llamada dada la clave.
 */
  // Definición Variables
  int claveZona;
  int minutosHablados;
  int costoTotal;

  // Entrada Algoritmo
  print("Ingrese la clave de la zona geográfica:");
  claveZona = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el número de minutos hablados:");
  minutosHablados = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  switch (claveZona) {
    case 12:
      // América del Norte
      costoTotal = minutosHablados * 200;
      break;
    case 15:
      // América Central
      costoTotal = minutosHablados * 220;
      break;
    case 18:
      // América del Sur
      costoTotal = minutosHablados * 450;
      break;
    case 19:
      // Europa
      costoTotal = minutosHablados * 350;
      break;
    case 23:
      // Asia
    case 25:
      // África
      costoTotal = minutosHablados * 600;
      break;
    case 29:
      // Oceanía
      costoTotal = minutosHablados * 500;
      break;
    default:
      costoTotal = 0;
      break;
  }

  // Salida Algoritmo
  print("El costo total de la llamada es: \$${costoTotal.toStringAsFixed(2)}");
}
