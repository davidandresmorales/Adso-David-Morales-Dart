class Evento {
  String _nombre; // Atributo privado
  int cantpersonas; // Atributo público
  DateTime _fecha; // Atributo privado

  Evento(this._nombre, this.cantpersonas, this._fecha);

  // Metodos SETTERS Y GETTERS
  void setNombre(String nom) {
    _nombre = nom;
  }

  String getNombre() {
    return _nombre;
  }

  void setCantpersonas(int cant) {
    cantpersonas = cant;
  }

  int getCantPersonas() {
    return cantpersonas;
  }

  void setFechaEvento(DateTime fecha) {
    _fecha = fecha;
  }

  DateTime getFechaEvento() {
    return _fecha;
  }

  void _mostrarInfo() {
    print("""
    *******************
      Nombre: $_nombre
      Cantidad personas: $cantpersonas
      Fecha: $_fecha
    *******************
      """);
  }

  void mostrarInformacion() { 
    _mostrarInfo();
  }
}
