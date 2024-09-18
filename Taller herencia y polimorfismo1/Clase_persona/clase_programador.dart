import 'Clase_persona.dart';
class Programador extends Persona {
  String _empresa;
  double _salario;

  Programador(String nombre, int edad, this._empresa, this._salario) : super(nombre, edad);

  void setEmpresa(String empresa) {
    _empresa = empresa;
  }

  String getEmpresa() {
    return _empresa;
  }

  void setSalario(double salario) {
    _salario = salario;
  }

  double getSalario() {
    return _salario;
  }

  double obtenerSalarioNeto() {
    return _salario - (_salario * 0.11);
  }

  @override
  void mostrarDatos() {
    super.mostrarDatos();
    print('Empresa: $_empresa, Salario Neto: ${obtenerSalarioNeto()}');
  }
}