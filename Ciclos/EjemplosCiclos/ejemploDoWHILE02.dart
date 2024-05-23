import 'dart:io';

void main() {
/*Desarrollar un menú que permita realizar las operaciones matematicas básicas */
int opcion;
double num1 = 0, num2 = 0, resultado;

do {
  print("Bienvenido a la calculadora");
  print("1.suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Salir");
  print("Ingrese la opción deseada");
  opcion= int.parse(stdin.readLineSync()!);

  if (opcion>= 1 && opcion <5){
  print("Ingrese los 2 números para operar");
  num1= double.parse(stdin.readLineSync()!);
  num2= double.parse(stdin.readLineSync()!);
  
  

  switch (opcion) {
    case 1: 
    resultado= num1+num2;
    print("La suma de los 2 números para operar: $resultado");
    break;
  
   case 2: 
    resultado= num1-num2;
    print("La resta de los 2 números para operar: $resultado");
    break;

    case 3: 
    resultado= num1*num2;
    print("La multiplicación de los 2 números para operar: $resultado");
    break;

    case 4: 
    resultado= num1/num2;
    print("La división de los 2 números para operar: $resultado");
    break;

    case 5: 
    print("En la buena");
    break;
    default:
    print("Opción incorrecta");
  }
   } 
  } while (opcion != 5);

}