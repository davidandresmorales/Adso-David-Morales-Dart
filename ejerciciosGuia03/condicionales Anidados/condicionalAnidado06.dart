import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 06
  /*El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año.
  La manera de planificarlas depende de lo siguiente:
  Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su 
  nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo 
  bancario  para  tener  un  nuevo  saldo  de  $2000000,  pero  si  su capital  tiene  actualmente  
  un  saldo superior a los $2000000 no pedirá ningún préstamo.

  Posteriormente repartirá su presupuesto de la siguiente manera.

  •$500000 para equipo de computo
  •$200000 para mobiliario
  •y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos 
  al personal.
  Solicitar el capital y en base a este desplegar que cantidades se destinaran 
  para la compra de insumos e incentivos al personal y, en caso de que fuera necesario, a cuanto 
  ascendería la cantidad que se pediría al banco.*/
  
  // Definición Variables
  double capital;
  double equipoComputo = 500000;
  double mobiliario = 200000;
  double presupuestoRestante;
  double insumos;
  double incentivos;
  double prestamoBancario = 0;

  // Entrada Algoritmo
  print("Ingrese el capital actual de la empresa:");
  capital = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (capital < 0) {
    // Si el capital es negativo, pedir préstamo para alcanzar $1000000
    prestamoBancario = 1000000 - capital;
    presupuestoRestante = 1000000;
  } else if (capital < 2000000) {
    // Si el capital es positivo pero menor a $2000000, pedir préstamo para alcanzar $2000000
    prestamoBancario = 2000000 - capital;
    presupuestoRestante = 2000000;
  } else {
    // Si el capital es mayor o igual a $2000000, no pedir préstamo
    presupuestoRestante = capital;
  }

  // Calcular presupuesto para insumos e incentivos
  presupuestoRestante -= (equipoComputo + mobiliario);
  insumos = presupuestoRestante / 2;
  incentivos = presupuestoRestante / 2;

  // Salida Algoritmo
  print("Para la compra de insumos se destinará: \$${insumos.toStringAsFixed(2)}");
  print("Para otorgar incentivos al personal se destinará: \$${incentivos.toStringAsFixed(2)}");

  if (prestamoBancario > 0) {
    print("Se solicitará un préstamo bancario por un monto de: \$${prestamoBancario.toStringAsFixed(2)}");
  }
}
