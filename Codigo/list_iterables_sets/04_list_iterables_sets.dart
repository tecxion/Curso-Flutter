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
}
