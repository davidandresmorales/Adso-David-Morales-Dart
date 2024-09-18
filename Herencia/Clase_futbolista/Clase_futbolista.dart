import 'Clase_persona.dart';
class Futbolista extends Persona {
  String _equipo;
  String _posicion;
  int _cantidadGoles;

  Futbolista(String nombre, int edad, this._equipo, this._posicion, this._cantidadGoles)
      : super(nombre, edad);

  // Métodos set y get para equipo
  void setEquipo(String equipo) {
    _equipo = equipo;
  }

  String getEquipo() {
    return _equipo;
  }

  // Métodos set y get para posición
  void setPosicion(String posicion) {
    _posicion = posicion;
  }

  String getPosicion() {
    return _posicion;
  }

  // Métodos set y get para cantidad de goles
  void setCantGoles(int goles) {
    _cantidadGoles = goles;
  }

  int getCantGoles() {
    return _cantidadGoles;
  }

  // Método para determinar si el futbolista es titular
  bool esTitular() {
    return _cantidadGoles > 5;
  }

  @override
  void mostrarDatos() {
    super.mostrarDatos();
    print('Equipo: $_equipo, Posición: $_posicion, Goles: $_cantidadGoles, Es titular: ${esTitular()}');
  }
}