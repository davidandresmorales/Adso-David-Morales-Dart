void main(List<String> args) {
  // Definición Matriz
  List<List<int>> matriz1;

  // definición e Inicialización Matriz vacía
  List<List<int>> matriz2 = [];

  // Definir e inicializar con valores de la Matriz
  List<List<int>> matriz3 = [
    [3, 5, 7, 9],
    [2, 4, 6, 8],
    [1, 8, 9, 12]
  ];
  // Acceder a los elementos
  print(matriz3);
  print(matriz3[1][2]); //Imprime 6
  print(matriz3[2][3]); //Imprime 12
  print(matriz3[0][2]); //Imprime 7

  // Modificar los elementos de la matriz
  matriz3[2][1] = 7;
  matriz3[2][3] = 11;
  print(matriz3[2][1]);
  print(matriz3[2][3]);
  print(matriz3);

  // Tamaño Matriz

  print("cantidad filas: ${matriz3.length}");
  print("cantidad columnas: ${matriz3[0].length}");

  // Imprime todos los elementos de la lista

  for (int fila = 0; fila < matriz3.length; fila++) { 
    //Recorre las Filas
    for (int columna = 0; columna < matriz3[0].length; columna++) { 
    //Recorre las columnas
    print(matriz3[fila][columna]);  
    }
  } 
}
