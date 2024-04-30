import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 06
  /*El dueño de una empresa desea planificar las decisiones financieras que
  tomara en el Siguiente año. La manera de planificarlas depende de lo
  siguiente:Si actualmente su capital se encuentra con saldo negativo, pedirá
  un préstamo bancario para que su nuevo saldo sea de $1000000. Si su capital
  tiene actualmente un saldo positivo pedirá un préstamo bancario  para  tener
  un  nuevo  saldo  de  $2000000,  pero  si  su capital  tiene  actualmente  un
  saldo superior a los $2000000 no pedirá ningún préstamo.Posteriormente repartirá
  su presupuesto de la siguiente manera.•$500000 para equipo de computo•$200000 para
  mobiliario•y del resto, la mitad será para la compra de insumos y la otra para otorgar
  incentivos al personal.Solicitar el capital y en base a este desplegar que cantidades
  se destinaran para la compra de insumos e incentivos al personal y, en caso de que
  fuera necesario, a cuanto ascendería la cantidad que se pediría al banco. */
  // ENTRADA DEL ALGORITMO
  print('Ingrese el capital actual:');
  double capitalActual = double.parse(stdin.readLineSync()!);

  // DEFINICIÓN DE VARIABLES
  double presupuestoEquipos = 500000;
  double presupuestoMobiliario = 200000;
  double presupuestoInsumos;
  double presupuestoIncentivos;
  double totalPresupuesto;
  double prestamo = 0;

  // PROCESO DEL ALGORITMO
  if (capitalActual < 0) {
    prestamo = 1000000 - capitalActual;
    capitalActual = 1000000;
  } else {
    if (capitalActual < 2000000) {
      prestamo = 2000000 - capitalActual;
      capitalActual = 2000000;
    } else {
      prestamo = 0;
    }
  }

  presupuestoInsumos = (capitalActual - presupuestoEquipos - presupuestoMobiliario) / 4;
  presupuestoIncentivos = presupuestoInsumos;
  totalPresupuesto = presupuestoEquipos + presupuestoMobiliario + presupuestoInsumos + presupuestoIncentivos;

  // SALIDA DEL ALGORITMO
  print('Presupuesto para equipo de computo: \$${presupuestoEquipos.toStringAsFixed(2)}');
  print('Presupuesto para mobiliario: \$${presupuestoMobiliario.toStringAsFixed(2)}');
  print('Presupuesto para insumos: \$${presupuestoInsumos.toStringAsFixed(2)}');
  print('Presupuesto para incentivos al personal: \$${presupuestoIncentivos.toStringAsFixed(2)}');
  if (prestamo > 0) {
    print('Se solicitará un préstamo bancario de: \$${prestamo.toStringAsFixed(2)}');
  }
}
