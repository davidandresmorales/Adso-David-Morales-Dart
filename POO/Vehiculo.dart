class Vehiculo {
  String color;
  int velocidad;
  double tamanio;

//constructor clase vehiculo
  Vehiculo(this.color, this.velocidad, this.tamanio) {}
  //Vehiculo(String col, int vel, double tam) {}

//método Avanzar
void avanzar(int velAvanz) {
int newVelocidad = this.velocidad + velAvanz;
if (newVelocidad<=200) {
  this.velocidad=this.velocidad + velAvanz;
print("El vehiculo avanzar a ${this.velocidad}");
} else {
  print("No puede superar el limite de 200km/h");
}
}
//metodo detenerse
void detenerse() {
  velocidad= 0;
  print("El vehiculo se detiene");
}
}
void main(List<String>args) {
Vehiculo miVehiculo1;
miVehiculo1 = Vehiculo("blanco", 30, 3.5);
miVehiculo1.avanzar(60);
miVehiculo1.avanzar(70);
miVehiculo1.detenerse();
//****************************************** */
Vehiculo miVehiculo2= Vehiculo("negro", 10, 4.5);
miVehiculo2.avanzar(50);
miVehiculo2.detenerse();

//************************************************** */
miVehiculo1.avanzar(40);
}
  
  
  