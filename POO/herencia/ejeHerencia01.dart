class Animal {
  String color;
  String especie;
  double tamanio;
  Animal(this.color, this.especie, this.tamanio);
  void hacersonido(){
    print("El animal hace un sonido");
  }
}
// la clase perro hereda de animal
class Perro extends Animal {
  String raza;
  Perro(this.raza, colorUsu, especieUsu, tamUsu):super(colorUsu, especieUsu, tamUsu);

  @override // se sobreescribe el método del padre
  void hacersonido(){
    print("El perro ladra");
  }
  void mostrarInfo() {
    print("""
    Especie: $especie
    color: $color
    Tamaño: $tamanio
    Raza: $raza
    """);
  }
  }
  class Gato extends Animal {
    bool estaVacunado;
    Gato(this.estaVacunado, colorUsu, especieUsu, tamUsu ) : super(colorUsu, especieUsu, tamUsu);
    @override
    void hacersonido() {
      print("El gato maulla");
    }
     void mostrarInfo() {
    print("""
    Especie: $especie
    color: $color
    Tamaño: $tamanio
    Esta vacunado: ${estaVacunado ? "si" : "no"}""");
  }
  }


void main(List<String> args) {
  Perro myDog = Perro("pitbull", "Negro", "canino", 20);
  myDog.hacersonido();
  myDog.mostrarInfo();
  Gato myCat = Gato(false, "blanco", "felino", 10.0);
  myCat.hacersonido();
  myCat.mostrarInfo();
}