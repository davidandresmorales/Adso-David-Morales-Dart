import 'dart:io';
void main(List<String> args) {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 08
  /*Dada la duración en minutos de una llamada calcular el costo,
  considerando:•Hasta tres minutos el costo es 600•Por encima de tres
  minutos es 600 más 150 por cada minuto adicional a los tres primeros.*/
  //DEFINICION VARIABLES
  double duracionLlamada, costoLlamada;
  double minutosAdicionales;
  //ENTRADA ALGORITMO
  print("Ingrese la duración de la llamada: ");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  costoLlamada = 0;
  if(duracionLlamada > 3){
    minutosAdicionales = duracionLlamada - 3;
    costoLlamada = 600 + (minutosAdicionales * 150);
  }
    //SALIDA ALGORITMO
    print("El costo de la llamada fue: $costoLlamada");
}