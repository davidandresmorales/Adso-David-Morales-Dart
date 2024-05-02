import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 04
  /*Calcular el valor de f(x) según la expresión
       |x ^ 2     | Si (x) mod 4 = 0 
  f(x) |x / 6     | Si (x) mod 4 = 1
       |Raiz(x)   | Si (x) mod 4 = 2
       |X ^ 3 + 5 | Si (x) mod 4 = 3
  */
  //DEFINICION VARIABLES
  double x;
  //ENTRADA ALGORITMO
  print("Ingrese el valor de x");
  x = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (x % 4 == 0) {
    print("f(x) = ${x * x}");
  } else if (x % 4 == 1) {
    print("f(x) = ${x / 6}");
  } else if (x % 4 == 2) {
    print("f(x) = ${sqrt(x)}");
  } else if (x % 4 == 3) {
    print("f(x) = ${x  ^ 3	 + 5}");

  }
  }
  
  

  
  
  
