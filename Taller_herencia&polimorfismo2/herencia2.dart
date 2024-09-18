import 'dart:io';

abstract class Producto {
  String codigoProducto;
  String nombreProducto;
  bool disponible;
  double precio;

  Producto(this.codigoProducto, this.nombreProducto, this.disponible, this.precio);

  void realizarDescuento(); // Método abstracto

  void mostrarInformacionProducto() {
    print('Código: $codigoProducto');
    print('Nombre: $nombreProducto');
    print('Disponible: $disponible');
    print('Precio: $precio');
  }
}

class DiscoDuro extends Producto {
  DiscoDuro(String codigoProducto, String nombreProducto, bool disponible, double precio)
      : super(codigoProducto, nombreProducto, disponible, precio);

  @override
  void realizarDescuento() {
    precio = precio * 0.8; // Descuento del 20%
  }
}

class Marcador extends Producto {
  Marcador(String codigoProducto, String nombreProducto, bool disponible, double precio)
      : super(codigoProducto, nombreProducto, disponible, precio);

  @override
  void realizarDescuento() {
    precio = precio * 0.9; // Descuento del 10%
  }
}

class Electrodomestico extends Producto {
  double consumoWatts;
  double horasUso;

  Electrodomestico(String codigoProducto, String nombreProducto, bool disponible, double precio, this.consumoWatts, this.horasUso)
      : super(codigoProducto, nombreProducto, disponible, precio);

  @override
  void realizarDescuento() {
    precio = precio * 0.7; // Descuento del 30%
  }

  double calcularPrecioConsumo() {
    return consumoWatts * horasUso * 0.1; // Cálculo simple del consumo
  }
}

class Portatil extends Electrodomestico {
  Portatil(String codigoProducto, String nombreProducto, bool disponible, double precio, double consumoWatts, double horasUso)
      : super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, horasUso);
}

class Parlante extends Electrodomestico {
  Parlante(String codigoProducto, String nombreProducto, bool disponible, double precio, double consumoWatts, double horasUso)
      : super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, horasUso);
}

void main() {
  List<Producto> inventario = [];

  while (true) {
    print('Elige una opción:');
    print('1) Crear Disco Duro');
    print('2) Crear Marcador');
    print('3) Crear Portátil');
    print('4) Crear Parlante');
    print('5) Vender Disco Duro');
    print('6) Vender Marcador');
    print('7) Vender Portátil');
    print('8) Vender Parlante');
    print('9) Calcular precio consumo Portátil');
    print('10) Calcular precio consumo Parlante');
    print('11) Salir');

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        inventario.add(DiscoDuro('001', 'Disco Duro 1TB', true, 100.0));
        print('Disco Duro creado.');
        break;
      case 2:
        inventario.add(Marcador('002', 'Marcador Permanente', true, 10.0));
        print('Marcador creado.');
        break;
      case 3:
        inventario.add(Portatil('003', 'Portátil Gamer', true, 1500.0, 300.0, 5.0));
        print('Portátil creado.');
        break;
      case 4:
        inventario.add(Parlante('004', 'Parlante Bluetooth', true, 200.0, 100.0, 3.0));
        print('Parlante creado.');
        break;
      case 5:
        _venderProducto(inventario, 'Disco Duro');
        break;
      case 6:
        _venderProducto(inventario, 'Marcador');
        break;
      case 7:
        _venderProducto(inventario, 'Portátil');
        break;
      case 8:
        _venderProducto(inventario, 'Parlante');
        break;
      case 9:
        _calcularPrecioConsumo(inventario, 'Portátil');
        break;
      case 10:
        _calcularPrecioConsumo(inventario, 'Parlante');
        break;
      case 11:
        print('Saliendo...');
        return;
      default:
        print('Opción no válida.');
    }
  }
}

void _venderProducto(List<Producto> inventario, String nombreProducto) {
  for (var producto in inventario) {
    if (producto.nombreProducto == nombreProducto) {
      producto.realizarDescuento();
      producto.mostrarInformacionProducto();
      return;
    }
  }
  print('$nombreProducto no encontrado.');
}

void _calcularPrecioConsumo(List<Producto> inventario, String nombreProducto) {
  for (var producto in inventario) {
    if (producto.nombreProducto == nombreProducto && producto is Electrodomestico) {
      Electrodomestico electrodomestico = producto;
      print('Precio consumo: ${electrodomestico.calcularPrecioConsumo()}');
      return;
    }
  }
  print('$nombreProducto no encontrado o no es un electrodoméstico.');
}
