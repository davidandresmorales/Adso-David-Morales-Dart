import 'dart:io';

void main() {
  // Definir el precio por kilo de naranjas y el descuento
  const double precioPorKilo = 50.0;
  const double descuento = 0.15;

  // Inicializar el total percibido por la tienda
  double totalPercibido = 0.0;

  // Iterar sobre los 15 clientes
  for (var i = 1; i <= 15; i++) {
    stdout.write("Cliente $i - Ingrese la cantidad de kilos de naranjas comprados: ");
    var kilos = double.parse(stdin.readLineSync()!);

    double totalAPagar;

    // Calcular el total a pagar y el descuento si corresponde
    if (kilos > 10) {
      totalAPagar = kilos * precioPorKilo * (1 - descuento);
    } else {
      totalAPagar = kilos * precioPorKilo;
    }

    // Mostrar el total a pagar por cada cliente
    print("El cliente $i deberá pagar \$${totalAPagar.toStringAsFixed(2)}");

    // Sumar al total percibido por la tienda
    totalPercibido += totalAPagar;
  }

  // Mostrar el total percibido por la tienda
  print("\nTotal percibido por la tienda: \$${totalPercibido.toStringAsFixed(2)}");
}
