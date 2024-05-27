import 'dart:io';

void main(List<String> args) {
  // David Andrés Morales Ejercicio - Do While - 4
  /*
  Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población y Vivienda. 
  Desea obtener de todas las personas que alcance a encuestar en un día, qué porcentaje tiene estudios de primaria, 
  secundaria, carrera técnica, estudios profesionales y estudios de posgrado. El programa debe preguntar si se desea 
  continuar ingresando datos.
  */

  // Definición Variables
  int totalEncuestados = 0;
  int primaria = 0;
  int secundaria = 0;
  int tecnica = 0;
  int profesional = 0;
  int posgrado = 0;
  String continuar = 'S';

    // Entrada algoritmo
  do {

    print("Ingrese el nivel de estudios de la persona encuestada:");
    print("1. Primaria");
    print("2. Secundaria");
    print("3. Carrera Técnica");
    print("4. Estudios Profesionales");
    print("5. Posgrado");

  // Proceso Algoritmo

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        primaria++;
        break;
      case 2:
        secundaria++;
        break;
      case 3:
        tecnica++;
        break;
      case 4:
        profesional++;
        break;
      case 5:
        posgrado++;
        break;
      default:
        print('Opción no válida. Por favor, ingrese un número del 1 al 5.');
        continue;
    }

    totalEncuestados++;

    print('¿Desea continuar ingresando datos? (S para sí, N para no):');
    continuar = stdin.readLineSync()!.toUpperCase();
  } while (continuar == 'S');

  // Salida Algoritmo
  if (totalEncuestados > 0) {
    double porcentajePrimaria = (primaria * 100) / totalEncuestados;
    double porcentajeSecundaria = (secundaria * 100) / totalEncuestados;
    double porcentajeTecnica = (tecnica * 100) / totalEncuestados;
    double porcentajeProfesional = (profesional * 100) / totalEncuestados;
    double porcentajePosgrado = (posgrado * 100) / totalEncuestados;

    print("Resultados del censo:");
    print("Total encuestados: $totalEncuestados");
    print("Primaria: ${porcentajePrimaria.toStringAsFixed(2)}%");
    print("Secundaria: ${porcentajeSecundaria.toStringAsFixed(2)}%");
    print("Carrera Técnica: ${porcentajeTecnica.toStringAsFixed(2)}%");
    print("Estudios Profesionales: ${porcentajeProfesional.toStringAsFixed(2)}%");
    print("Posgrado: ${porcentajePosgrado.toStringAsFixed(2)}%");
  } else {
    print('No se ingresaron datos.');
  }
}
