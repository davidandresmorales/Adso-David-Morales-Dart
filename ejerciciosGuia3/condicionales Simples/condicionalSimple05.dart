import 'dart:io'; 
void main(List<String> args) {
/*Calcular el total que una persona debe pagar en un almacén,
 si el precio de cada llanta es de $80000 si se compran menos 
 de 5 llantas y de $70000 si se compran 5 o más.*/
 //DEFINICION VARIABLES
 int cantLLantas;
 double precioUnitario, pagoTotal;
 //ENTRADA ALGORITMO
 print("Ingrese la cantidad de llantas: ");
 cantLLantas = int.parse(stdin.readLineSync()!);
 //PROCESO ALGORITMO
 precioUnitario = 80000;
 if (cantLLantas >= 5) {
   precioUnitario = 70000;
 }
 pagoTotal = precioUnitario * cantLLantas;
 //SALIDA ALGORITMO
 print("Para las $cantLLantas llantas debe pagar $pagoTotal");
}