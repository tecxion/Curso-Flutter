void main() {
  // Lista
  var numbers = [1, 2, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 10];
  print('lista original: $numbers');

  var numberReversed = numbers.reversed; //Aquí la lista se invierte
  print('lista invertida: $numberReversed');

  // Modificadores de listas, dejo varios ejemplos de modificadores de listas
  numbers.add(11); // Agrega un elemento al final de la lista
  print('lista añadido el 11: $numbers');
  numbers.remove(11); // Elimina un elemento de la lista
  print('Lista eliminado el 11: $numbers');
  numbers.removeAt(
    0,
  ); // Elimina un elemento de la lista en una posición específica
  print('Lista eliminando la posicion 0: $numbers');
  numbers.insert(0, 11); // Inserta un elemento en una posición específica
  print('Lista insertando 11 en la posicion 0: $numbers');

  // Como podéis comprobar, los modificadores de listas son muy similares a otros lenguajes de programación.

  //TODO Para imprimir una pantalla sin elementos repetidos, se puede usar el método toSet() para convertir la lista en un conjunto y luego volver a convertirlo en una lista.
  print('Lista sin elementos repetidos: ${numbers.toSet().toList()}');

  // Lista usando el where.
  var numbersGreaterThanFive = numbers.where((number) => number > 5);
  print('Lista con números mayores a 5: $numbersGreaterThanFive');

  // Lista mayores de 5 sin repetidos
  var numbersGreaterThanFiveWithoutRepetition =
      numbers.where((number) => number > 5).toSet().toList();
  print(
    'Lista con números mayores a 5 sin repetidos: $numbersGreaterThanFiveWithoutRepetition',
  );

  /*

  ? -- EJERCICIOS DE REPASO --
  ? Aquí tienes algunos ejercicios de repaso para practicar lo que has aprendido sobre listas en Dart
  ? Puedes intentar resolverlos por tu cuenta y luego comparar tus soluciones con las que se proporcionan
  ? a continuación.

  */

  /* 
  ! Ejercicio Repaso:

  ? Crea una lista de números enteros y realiza las siguientes operaciones:
  ? - Imprime la lista original.
  ? - Agrega un nuevo número al final de la lista.
  ? - Elimina un número específico de la lista.
  ? - Invierte el orden de los elementos en la lista.
  ? - Imprime la lista resultante después de cada operación.
  */

  var integerList = [1, 2, 3, 4, 5];
  print('Lista original: $integerList');
  integerList.add(6);
  print('Lista después de agregar 6: $integerList');
  integerList.remove(3);
  print('Lista después de eliminar 3: $integerList');
  integerList = integerList.reversed.toList();
  print('Lista después de invertir el orden: $integerList');

  /* Ejercicio 1.
  ! 1. Gestión de Inventario
? Crea un programa que simule un sistema de inventario usando un Map. El mapa debe contener productos como claves y sus cantidades disponibles como valores:

? - Declara un Map<String, int> con algunos productos iniciales (por ejemplo: {"manzanas": 10, "plátanos": 20}).
? - Agrega un nuevo producto al inventario.
? - Actualiza la cantidad de un producto existente.
? - Elimina un producto del inventario.
? - Finalmente, muestra el inventario completo en la consola.
  */

  var inventario = {'manzanas': 10, 'plátanos': 20, 'naranjas': 15};
  print('Inventario inicial: $inventario');
  inventario['peras'] = 5;
  print('Inventario después de agregar peras: $inventario');
  inventario['manzanas'] = 3;
  print('Inventario después de actualizar manzanas: $inventario');
  inventario.remove("peras");
  print('Inventario después de eliminar peras: $inventario');
  print('Inventario completo: $inventario');

  /* 
! Ejercicio 2. Sistema de Calificaciones
? Crea un programa que utilice un Map para almacenar las calificaciones de varios estudiantes. Cada estudiante será una clave (nombre) y su calificación será el valor:

? - Declara un Map<String, double> con algunas calificaciones iniciales.
? - Calcula el promedio de las calificaciones.
?- Encuentra al estudiante con la calificación más alta.
?- Muestra el promedio y el nombre del estudiante con la mejor calificación.

*/

  var estudiantes = {'Juan': 8.5, 'María': 9.0, 'Pedro': 7.5, 'Ana': 9.5};
  print('Calificaciones iniciales: $estudiantes');
  double sumaCalificaciones = 0;
  estudiantes.forEach((nombre, calificacion) {
    sumaCalificaciones += calificacion;
  });
  double promedio = sumaCalificaciones / estudiantes.length;
  print('La media de calificaciones es: $promedio');
}
