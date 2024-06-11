void main(List<String> args) {
  List<List<int>> matrizProduction = [
    [30, 40, 20],
    [10, 12, 15],
    [8, 10, 7],
    [25, 30, 30],
    [12, 20, 10]
  ];
  List<int> totalArticulos = [0, 0, 0, 0, 0];
  List<int> totalTurnos = [0, 0, 0];

  for (int i = 0; i < matrizProduction.length; i++) {
    //Filas
    for (int j = 0; j < matrizProduction[j].length; i++) {
      // Se va sumando los valores por articulo (CADA FILA)
      totalArticulos[i] += matrizProduction[i][j];
      totalTurnos[j] += matrizProduction[i][j];
    }
  }
  print(totalArticulos);
  print(totalTurnos);

  for (int i = 0; i < totalArticulos.length; i++) {
    print("El total del artículo #${i + 1} es: ${totalArticulos[i]}");
  }
  print('*' * 30);
  for (int i = 0; i < totalTurnos.length; i++) {
    if (totalArticulos[i] > mayorProd) {
      mayorProd = totalArticulos[i];
      posicionMayor
      
    }
    
  }
}
