import 'dart:io';

void main() {
/* Realizar un algoritmo que permita mostrar al usuario un listado de opciones tipo menú, para realizar una transacción en un banco 
(Determinar las que crea necesarias). La última opción será la de salir y allí se terminará el ciclo, de lo contrario mostrará
las otras opciones mientras el usuario quiera. No se deberá implementar las acciones como tal sino solo prints que indiquen 
las acciones realizadas */

//Declaración variables

int opcionmenu;

do {
  print("Bienvenido a bancolombia, indique que desea realizar");
  print("1.Consultar saldo");
  print("2.Transferir fondos");
  print("3.Pagar facturas");
  print("4.Ver detalles de la cuenta");
  print("5.Cambiar contraseña");
  print("6.Salir de menú");
  opcionmenu= int.parse(stdin.readLineSync()!);

 
 switch (opcionmenu) {
    case 1: 
    print("Consultar su saldo");
    print("_______________________");
    break;
  
   case 2: 
   print("Que fondos desea transferir");
   print("_______________________");
    break;

  case 3: 
  print("Que facturas desea pagar");
  print("_______________________");
  break;

  case 4:
  print("Detalles de la cuenta");
  print("_______________________");
  break;

  case 5:
  print("Cambiar contraseña");
  print("_______________________");
  break;

  case 6: 
    print("Salio de la cuenta");
    print("_______________________");
    break;

    default:
    print("Opción incorrecta");
    print("_______________________");
 
} 
  } while (opcionmenu != 6);

}
  