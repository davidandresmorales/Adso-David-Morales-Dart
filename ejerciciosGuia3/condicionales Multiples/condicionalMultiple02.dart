import 'dart:io';
void main(List<String> args) {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 02
  /*Una compañía de fumigación utiliza aviones para fumigar las cosechas
  contra una gran variedad de plagas. Las cantidades que la compañía cobra a
  los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas 
  que se desea fumigar, de acuerdo con la siguiente distribución :Tipo 1 : Fumigación 
  contra malas hierbas, $50000 por hectáreaTipo 2 : Fumigación contra moscas y mosquitos, 
  $70000 por hectáreaTipo 3 : Fumigación contra gusanos, $80000 por hectárea.Tipo 4 : Fumigación 
  contra todo lo anterior, $190000 por hectárea.•Si el área a fumigar es mayor de 100 hectáreas, 
  el granjero goza de un 5% de descuento.•Además, si la cuenta total sobrepasa el $1000000 se hace 
  acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000.•Si ambos descuentos 
  son aplicables, el correspondiente a la superficie se considera primero.Diseñe  el  programa  
  que  lea  el  nombre  del  granjero,  el  tipo  de  fumigación  solicitada  (1-4)  y  el  número  
  de hectáreas a fumigar. Se debe imprimir el nombre del granjero y la cuenta total.*/
  //DEFINICION VARIABLES
  double nombre, numHectareas, tipoFumigacion;
  double Tipo1, Tipo2, Tipo3, Tipo4;
  double cuentaTotal = 0;
  //ENTRADA ALGORITMO
  print("Ingrese el nombre del granjero");
  nombre = double.parse(stdin.readLineSync()!);
  print("Ingrese el tipo de fumigacion (1-4)");
  tipoFumigacion = double.parse(stdin.readLineSync()!);
  print("Ingrese el numero de hectareas a fumigar");
  numHectareas = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (tipoFumigacion == 1) {
    Tipo1 = numHectareas * 50000;
    cuentaTotal = Tipo1;
  } else if (tipoFumigacion == 2) {
    Tipo2 = numHectareas * 70000;
    cuentaTotal = Tipo2;
  } else if (tipoFumigacion == 3) {
    Tipo3 = numHectareas * 80000;
    cuentaTotal = Tipo3;
  } else if (tipoFumigacion == 4) {
    Tipo4 = numHectareas * 190000;
    cuentaTotal = Tipo4;
  }
  if (numHectareas > 100) {
    cuentaTotal = cuentaTotal * 0.05;
  }
  if (cuentaTotal > 1000000) {
    cuentaTotal = cuentaTotal * 0.10;
  }
  //SALIDA ALGORITMO
  print("El granjero $nombre");
  print("La cuenta total es: $cuentaTotal");

}