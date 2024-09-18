import 'Figuras.dart';
class Rectangulo extends Figura {
  double _ancho;
  double _alto;

  Rectangulo(this._ancho, this._alto);

  @override
  double calcularArea() {
    return _ancho * _alto;
  }

  @override
  double calcularPerimetro() {
    return 2 * (_ancho + _alto);
  }

  @override
  void mostrarDatos() {
    print('Rectángulo:');
    super.mostrarDatos();
  }
}