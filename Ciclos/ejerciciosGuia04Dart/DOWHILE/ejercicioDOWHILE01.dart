import 'dart:io';

void main(List<String> args) {
  // David Andres Morales Ejercicio - Do While - 1
  /*
  En un supermercado una ama de casa pone en su carrito los artículos 
  que va tomando de los estantes. La señora quiere asegurarse de que 
  el cajero le cobre bien lo que ella ha comprado, por lo que cada vez 
  que toma un articulo anota su precio junto con la cantidad de artículos 
  iguales que ha tomado y determina cuanto dinero gastará en ese articulo; 
  a esto le suma lo que irá gastando en los demás artículos, hasta que decide 
  que ya tomó todo lo que necesitaba. Ayúdale a esta señora a obtener el total 
  de sus compras.
  */
  
  // Definición de variables
  int contador = 0;
  int total = 0;
  int cantidad = 0;
  int precio = 0;
  
  // Entrada algoritmo
  print("Digite la cantidad de artículos que va a comprar: ");
  cantidad = int.parse(stdin.readLineSync()!);
  
  // Proceso algoritmo
  do {
    print("Digite el valor de la compra del artículo ${contador + 1}: ");
    precio = int.parse(stdin.readLineSync()!);
    total += precio;  
    contador++;
  } while (contador < cantidad);
  
  // Salida
  print("El total a pagar es de: $total");
}
