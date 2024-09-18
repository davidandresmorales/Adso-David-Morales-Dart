class Persona {
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  // Métodos set y get para nombre
  void setNombre(String nombre) {
    _nombre = nombre;
  }

  String getNombre() {
    return _nombre;
  }

  // Métodos set y get para edad
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
