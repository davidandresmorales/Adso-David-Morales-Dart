class Persona {
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  void setNombre(String nombre) {
    _nombre = nombre;
  }

  String getNombre() {
    return _nombre;
  }

  void setEdad(int edad) {
    _edad = edad;
  }

  int getEdad() {
    return _edad;
  }

  void mostrarDatos() {
    print('Nombre: $_nombre, Edad: $_edad');
  }
}
