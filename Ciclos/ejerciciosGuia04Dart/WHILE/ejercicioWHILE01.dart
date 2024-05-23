import 'dart:io';

void main(List<String> args) {

    /*
    Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. 
    Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de 
    sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  
    cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta 
    su sueldo base y sus comisiones.
    */

    // Definicion de variables
    int cantidadAgentes, contadorAgentes = 0, salarioBase, numeroVentas = 3;
    double comisiones, montoVentas, salarioTotal;

    // Entrada del algoritmo
    print("Ingrese la cantidad de agentes contratados:");
    cantidadAgentes = int.parse(stdin.readLineSync()!);

    // Proceso del algoritmo
    while(contadorAgentes < cantidadAgentes){
        print("Ingrese el salario base:");
        salarioBase = int.parse(stdin.readLineSync()!);
        double sumaVentas = 0.0;
        for(int i = 0; i < numeroVentas; i++){
            print("Ingrese el monto de la venta número " + (i + 1).toString() + ":");
            montoVentas = double.parse(stdin.readLineSync()!);
            sumaVentas += montoVentas;
        }
        comisiones = sumaVentas * 0.10;

        // Salida del algoritmo
        print("Las comisiones por ventas son: $comisiones");
        salarioTotal = salarioBase + comisiones;
        print("El salario total, incluyendo comisiones, es: $salarioTotal");
        contadorAgentes++;
    }
}
