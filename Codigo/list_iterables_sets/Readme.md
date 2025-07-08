# Lists, Iterables y Sets en Dart

## Lists

Una **List** es una colección ordenada de elementos. Permite duplicados y se accede por índice.

```dart
List<int> numeros = [1, 2, 3, 4];
numeros.add(5); // [1, 2, 3, 4, 5]
print(numeros[0]); // 1
```

## Iterables

Un **Iterable** es una colección que puede ser recorrida elemento por elemento. Todas las listas y sets son iterables.

```dart
Iterable<String> palabras = ['hola', 'mundo'];
for (var palabra in palabras) {
    print(palabra);
}
```

## Sets

Un **Set** es una colección no ordenada de elementos únicos (sin duplicados).

```dart
Set<String> frutas = {'manzana', 'banana', 'naranja'};
frutas.add('manzana'); // No se agrega porque ya existe
print(frutas.length); // 3
```

## Resumen

- **List:** Ordenada, permite duplicados, acceso por índice.
- **Iterable:** Colección recorrible, base de List y Set.
- **Set:** No ordenada, sin duplicados.


## Modificadores de listas.
Las listas tienen varios modificadores que permiten manipularlas de diferentes maneras, la sintaxis será la misma que en otros lenguajes de programación.
```
nombredelista.add(valor);
```

  - add: Agrega un elemento al final de la lista.
  - addAll: Agrega varios elementos al final de la lista.
  - insert: Inserta un elemento en una posición específica.
  - insertAll: Inserta varios elementos en una posición específica.
  - remove: Elimina el primer elemento que coincide con el valor especificado.
  - removeAt: Elimina el elemento en la posición especificada.
  - removeLast: Elimina el último elemento de la lista.
  - clear: Elimina todos los elementos de la lista.
  - sort: Ordena los elementos de la lista.
  - shuffle: Mezcla los elementos de la lista en un orden aleatorio.
  - sublist: Devuelve una sublista de la lista original.
  - indexOf: Devuelve el índice del primer elemento que coincide con el valor especificado
  - lastIndexOf: Devuelve el índice del último elemento que coincide con el valor especificado.
  - contains: Verifica si la lista contiene un elemento específico.
  - isEmpty: Verifica si la lista está vacía.
  - isNotEmpty: Verifica si la lista no está vacía.
  - length: Devuelve la cantidad de elementos en la lista.
  - first: Devuelve el primer elemento de la lista.
  - last: Devuelve el último elemento de la lista.
  - firstWhere: Devuelve el primer elemento que cumple con una condición específica.
  - lastWhere: Devuelve el último elemento que cumple con una condición específica.
  - any: Verifica si al menos un elemento cumple con una condición específica.
  - every: Verifica si todos los elementos cumplen con una condición específica.
  - map: Aplica una función a cada elemento de la lista y devuelve una nueva lista
  - where: Filtra los elementos de la lista que cumplen con una condición específica.
  - forEach: Aplica una función a cada elemento de la lista.
  - reduce: Combina los elementos de la lista en un solo valor utilizando una función.
  - fold: Combina los elementos de la lista en un solo valor utilizando una función y
  un valor inicial.
  - toSet: Convierte la lista en un conjunto (set), eliminando duplicados
  - toList: Convierte el conjunto (set) en una lista.
  - join: Une los elementos de la lista en una cadena de texto, utilizando un separador específico.
  - split: Divide una cadena de texto en una lista de subcadenas, utilizando un separador específico.
  y muchas más.


--- 
## Ejemplos
[Ejemplos](04_list_iterables_sets.dart)



Consulta la [documentación oficial de Dart](https://dart.dev/guides/libraries/library-tour#collections) para más detalles.