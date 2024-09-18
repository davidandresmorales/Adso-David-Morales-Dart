import 'Clase_persona/Clase_persona.dart';
import 'Clase_persona/Clase_futbolista.dart';
import 'Clase_persona/clase_programador.dart';
void main() {

  Persona persona = Persona('Juan', 30);
  persona.mostrarDatos();

  print('--- Futbolistas ---');

  Futbolista futbolista1 = Futbolista('Leonardo', 28, 'FC Barcelona', 'Delantero', 10);
  Futbolista futbolista2 = Futbolista('Mario', 25, 'Atlético Madrid', 'Defensa', 3);

  futbolista1.mostrarDatos();
  futbolista2.mostrarDatos();

  print('--- Programadores ---');


  Programador programador1 = Programador('Karen', 26, 'Google', 5000);
  Programador programador2 = Programador('Carlos', 29, 'Microsoft', 4500);

  programador1.mostrarDatos();
  programador2.mostrarDatos();
}