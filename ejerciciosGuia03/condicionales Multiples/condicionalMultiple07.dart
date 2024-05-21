import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 07
  /*El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el país 
  destino, y del número de minutos hablados.En la siguiente tabla se presenta el costo por minuto por zona.
  A cada uno se le ha asociado una clave.  Construya  la  solución  para  calcular  e  imprimir  el  
  costo  de  una  llamada  dada  la  clave  y  la duración de la llamada.
  Clave |   Zona            | Precio |Precio/minuto(del 4 en adelante)|
  12    | América del Norte | 200    |                150             |
  15    | América Central   | 220    |                180             |
  18    | América del Sur   | 450    |                350             |
  19    | Europa            | 350    |                270             |
  23    | Asia              | 600    |                460             |
  25    | África            | 600    |                460             |
  29    | Oceanía           | 500    |                390             |
 */
  // Definición Variables
  int claveZona;
  int duracionLlamada;
  int costoTotal;

  // Entrada Algoritmo
  print("Ingrese la clave de la zona geográfica:");
  claveZona = int.parse(stdin.readLineSync()!);
  
  print("Ingrese la duración de la llamada en minutos:");
  duracionLlamada = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  switch (claveZona) {
    case 12:
      // América del Norte
      if (duracionLlamada >= 4) {
        costoTotal = 200 + (duracionLlamada - 3) * 150; // Se cobra el precio base más el precio por minuto adicional
      } else {
        costoTotal = 200;
      }
      break;
    case 15:
      // América Central
      if (duracionLlamada >= 4) {
        costoTotal = 220 + (duracionLlamada - 3) * 180;
      } else {
        costoTotal = 220;
      }
      break;
    case 18:
      // América del Sur
      if (duracionLlamada >= 4) {
        costoTotal = 450 + (duracionLlamada - 3) * 350;
      } else {
        costoTotal = 450;
      }
      break;
    case 19:
      // Europa
      if (duracionLlamada >= 4) {
        costoTotal = 350 + (duracionLlamada - 3) * 270;
      } else {
        costoTotal = 350;
      }
      break;
    case 23:
      // Asia
    case 25:
      // África
      if (duracionLlamada >= 4) {
        costoTotal = 600 + (duracionLlamada - 3) * 460;
      } else {
        costoTotal = 600;
      }
      break;
    case 29:
      // Oceanía
      if (duracionLlamada >= 4) {
        costoTotal = 500 + (duracionLlamada - 3) * 390;
      } else {
        costoTotal = 500;
      }
      break;
    default:
      costoTotal = 0;
      break;
  }

  // Salida Algoritmo
  print("El costo total de la llamada es: \$${costoTotal.toStringAsFixed(2)}");
}
