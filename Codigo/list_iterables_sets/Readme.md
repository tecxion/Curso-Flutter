# Manual Breve: Lists, Iterables y Sets en Dart

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

Consulta la [documentación oficial de Dart](https://dart.dev/guides/libraries/library-tour#collections) para más detalles.