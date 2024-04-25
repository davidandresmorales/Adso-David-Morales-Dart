import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 06
  /*En  un  supermercado  se  hace  una  promoción,  
  mediante  la  cual  el  cliente  obtiene  un  descuento 
  dependiendo  de  un  número  que  se  escoge  al  azar.  
  Si  el  numero  escogido  es  menor  que  74  el descuento 
  es del 15% sobre el total de la compra, si es mayor o igual 
  a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.*/
  //DEFINICION VARIABLES
  int numeroAzar;
  double precioOriginal, descuento, precioTotal;
  //Procesos Algoritmo
  print("Cual es el precio totalde la compra?");
  precioOriginal = double.parse(stdin.readLineSync()!);
  numeroAzar = Random().nextInt(100);
  print("El numero azar es: $numeroAzar");
  descuento = 0;
  if (numeroAzar < 74) {
    descuento = precioOriginal * 0.15;
  }
  if (numeroAzar >= 74) {
    descuento = precioOriginal * 0.20;
  }
  precioTotal = precioOriginal - descuento;
  //SALIDA ALGORITMO
  print("El precio total es: $precioTotal");
}