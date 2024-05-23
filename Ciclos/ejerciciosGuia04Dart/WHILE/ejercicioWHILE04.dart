import 'dart:io';

void main(List<String> args) {
  /*
  El Departamento de Seguridad Pública y Tránsito del D.F. desea saber, de los n autos que entran a la Ciudad de México, cuántos entran con calcomanía de cada color. Conociendo el último dígito de la placa de cada automóvil se puede determinar el color de la calcomanía utilizando la siguiente relación:

  +--------+-----------+
  | Dígito |   Color   |
  +--------+-----------+
  |  1, 2  | Amarilla  |
  |  3, 4  | Rosada    |
  |  5, 6  | Roja      |
  |  7, 8  | Verde     |
  |  9, 0  | Azul      |
  +--------+-----------+
  */

  // Definición de variables
  int numeroAutos, contadorAmarilla = 0, contadorRosada = 0, contadorRoja = 0, contadorVerde = 0, contadorAzul = 0, contadorAutos = 0, ultimoDigitoPlaca;
  
  // Entrada del algoritmo
  print("Ingrese el número de autos:");
  numeroAutos = int.parse(stdin.readLineSync()!);
  
  // Proceso del algoritmo
  while (contadorAutos < numeroAutos) {
    print("Ingrese el último dígito de la placa del auto número ${contadorAutos + 1}:");
    ultimoDigitoPlaca = int.parse(stdin.readLineSync()!);
    
    if (ultimoDigitoPlaca == 1 || ultimoDigitoPlaca == 2) {
      contadorAmarilla++;
    } else if (ultimoDigitoPlaca == 3 || ultimoDigitoPlaca == 4) {
      contadorRosada++;
    } else if (ultimoDigitoPlaca == 5 || ultimoDigitoPlaca == 6) {
      contadorRoja++;
    } else if (ultimoDigitoPlaca == 7 || ultimoDigitoPlaca == 8) {
      contadorVerde++;
    } else if (ultimoDigitoPlaca == 9 || ultimoDigitoPlaca == 0) {
      contadorAzul++;
    } else {
      print("Dígito no válido, por favor ingrese un número del 0 al 9.");
      continue;
    }
    
    contadorAutos++;  
  }
  
  // Salida del algoritmo
  print("La cantidad de autos con calcomanía amarilla es: $contadorAmarilla");
  print("La cantidad de autos con calcomanía rosada es: $contadorRosada");
  print("La cantidad de autos con calcomanía roja es: $contadorRoja");
  print("La cantidad de autos con calcomanía verde es: $contadorVerde");
  print("La cantidad de autos con calcomanía azul es: $contadorAzul");
}
