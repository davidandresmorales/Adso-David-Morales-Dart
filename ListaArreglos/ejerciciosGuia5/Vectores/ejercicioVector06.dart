void main(List<String> args) {
  List<double> vectorA, vectorB, vectorC = [];
  List<double> vectorBInvertido = [];
  double multiplicacion;
  vectorA = [2,4,6,8,10];
  vectorB = [1,3,5,7,9];
  // Ciclo para invertir el vector B
  // vectorBInvertido = [9, 7, 5, 3, 1]
  for (int i = vectorB.length-1; i >= 0; i--) {
    vectorBInvertido.add(vectorB[i]);
  }
  //ciclo para multplicar Vectores invertidos
  for (int i = 0; i < vectorA.length; i++) {
    multiplicacion = vectorA[i] * vectorBInvertido[i];
    vectorC.add(multiplicacion);
  }
  print(vectorA);
  print(vectorB);
  print(vectorC);
  
}