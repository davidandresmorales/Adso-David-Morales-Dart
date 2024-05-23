import 'dart:io';

void main (List<String> args) {
 int num, Suma=0;
 do {
  print("Ingrese un número. Cero para salir");
  num= int.parse(stdin.readLineSync()!);
  if (num > 0) {
    Suma += num;
  }
 } while (num!=0); {
  print ("La suma de los numeros es $Suma");
 }


}