import 'dart:io';

class Figura {
  double calcularArea() {
    return 0.0;
  }
}


class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return 3.1416 * radio * radio;  
  }
}


class Cuadrado extends Figura {
  double lado;

  Cuadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}


class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return (base * altura) / 2;  
  }
}

void main() {

  print('Ingrese el radio del círculo:');
  double radio = double.parse(stdin.readLineSync()!);
  Figura circulo = Circulo(radio);
  print('Área del círculo: ${circulo.calcularArea()}');


  print('Ingrese el lado del cuadrado:');
  double lado = double.parse(stdin.readLineSync()!);
  Figura cuadrado = Cuadrado(lado);
  print('Área del cuadrado: ${cuadrado.calcularArea()}');

  print('Ingrese la base del triángulo:');
  double base = double.parse(stdin.readLineSync()!);
  print('Ingrese la altura del triángulo:');
  double altura = double.parse(stdin.readLineSync()!);
  Figura triangulo = Triangulo(base, altura);
  print('Área del triángulo: ${triangulo.calcularArea()}');
}
