import 'dart:io';

void main() {
  // Definicion variables
  double precioPorKilo;
  double descuento = 0.15;
  double totalPercibido = 0.0; 

  // Entrada algoritmo
  stdout.write("Por favor, ingrese el precio por kilo de naranjas: ");
  precioPorKilo = double.parse(stdin.readLineSync()!);

  // Proceso algoritmo
  for (int i = 1; i <= 15; i++) { 
    stdout.write("Cliente $i - Ingrese la cantidad de kilos de naranjas comprados: ");
    double kilos = double.parse(stdin.readLineSync()!); 

    double totalAPagar; 

   
    if (kilos > 10) {
      totalAPagar = kilos * precioPorKilo * (1 - descuento);
    } else {
      totalAPagar = kilos * precioPorKilo; 
    }

    // Salida algoritmo
    print("El cliente $i deberá pagar \$${totalAPagar.toStringAsFixed(2)}"); 

    totalPercibido += totalAPagar;
  }

  
  print("\nTotal percibido por la tienda: \$${totalPercibido.toStringAsFixed(2)}");
}
