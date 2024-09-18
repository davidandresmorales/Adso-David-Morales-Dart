import 'Clase_persona.dart';
class Futbolista extends Persona {
  String _equipo;
  String _posicion;
  int _cantidadGoles;

  Futbolista(String nombre, int edad, this._equipo, this._posicion, this._cantidadGoles)
      : super(nombre, edad);

  void setEquipo(String equipo) {
    _equipo = equipo;
  }

  String getEquipo() {
    return _equipo;
  }

  void setPosicion(String posicion) {
    _posicion = posicion;
  }

  String getPosicion() {
    return _posicion;
  }

  void setCantGoles(int goles) {
    _cantidadGoles = goles;
  }

  int getCantGoles() {
    return _cantidadGoles;
  }

  bool esTitular() {
    return _cantidadGoles > 5;
  }

  @override
  void mostrarDatos() {
    super.mostrarDatos();
    print('Equipo: $_equipo, Posición: $_posicion, Goles: $_cantidadGoles, Es titular: ${esTitular()}');
  }
}