import 'dart:io';

void main(List<String> args) {
    List<int> vectorX = [];
    int numBuscar, cantElementos = 5, num;
    int posicion = -1;

    //Ciclo para llenar los elementos
    for (int i = 0; i < cantElementos; i++) {
        print("Ingrese el número #${i + 1}");
        num = int.parse(stdin.readLineSync()!);
        vectorX.add(num);
    }
    print("Ingrese un número para Buscar en el vector"); numBuscar = int.parse(stdin.readLineSync()!);

    // Ciclo para buscar el elemento

    for (int i = 0; i < vectorX.length; i++) {
    
     if (numBuscar == vectorX[i]) {
    
     posicion = i;

    }

    } // Validación de la posición

    if (posicion != -1) {
    
    print("El número se encuentra en la posición $posicion");

    } else {
    
    print("El número no se encontró");

    }
}
