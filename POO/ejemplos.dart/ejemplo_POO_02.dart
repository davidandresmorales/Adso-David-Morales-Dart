class Persona {
  // Atributos
  String nombre;
  String genero;
  double estatura;
  DateTime fechaNacimiento; 

  // Constructor
  Persona(this.nombre, this.genero, this.estatura, this.fechaNacimiento);

  // Metodos
   void saludar(){
    print("La persona ${this.nombre} esta saludando");
  }
  void comunicar(){
    print("la persona ${this.nombre} se comunica");
  }
  void dormir(){
    print("La persona ${this.nombre} esta durmiendo");
  }
}