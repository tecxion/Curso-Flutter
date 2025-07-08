## Guia de Maps en Dart.

En Dart, un Map es una colección de pares clave-valor. Es una estructura de datos muy útil para almacenar y recuperar información de manera eficiente. A continuación, se presenta una guía completa sobre cómo trabajar con Map en Dart, con ejemplos prácticos, también puedes visitar el código aquí -> [Ver codigo Maps](03_Maps.dart)


### ¿Qué es un Map en Dart?

Un Map es una colección que asocia claves únicas con sus respectivos valores . Las claves pueden ser de cualquier tipo (generalmente String, int, etc.), y los valores también pueden ser de cualquier tipo (incluyendo objetos, listas, otros maps, etc.).

```
Map<String, int> edades = {
  "Juan": 25,
  "María": 30,
  "Pedro": 22,
};
```

En el ejemplo anterior las claves son "Juan", "María" y "Pedro", y los valores son 25, 30 y 22, respectivamente.


### Declaración de un Map.

- Sintaxis literal:
var productos = {
    "manzana": 1.99,
    "pera": 2.49,
    "naranja": 1.79,
  };

- Constructor: Podemos usar el constructor Map() para crear un mapa vacío o con valores iniciales.
    - Map vacio:
    ```
    Map<String, dynamic> usuario = {};
    ```
    - Map con valores iniciales:
    ```
    Map<int, String> diasSemana = Map();
    diasSemana[1] = "Lunes";
    diasSemana[2] = "Martes";
    diasSemana[3] = "Miércoles";
    ```
### Acceder a los valores de un Map.

Para acceder a un valor en un Map, usa la clave correspondiente dentro de corchetes [].
```
print(pokemon["nombre"]); // Output: Pikachu
```

### Modificar un valor en un Map.

- modificar el valor de un Map:
```
// Ya existe el valor nombre = Pikachu y modificamos el valor de Pikachu a Raichu
pokemon["nombre"] = "Raichu";
```
- Añadir un nuevo valor en un Map:
```
pokemon["Force"] = 100; // Ya que force no existe en el Map Pokemon.
```

- Elinimar un Par Clave-Valor en un Map:
```
// Eliminamos el valor de la clave "nombre" del Map Pokemon
pokemon.remove("Force");
```

### Iterar sobre un Map.
Podemos recorrer un Map para acceder a sus claves y valores usando un bucle for.
```
capitales.forEach((clave, valor) {
  print("Clave: $clave, Valor: $valor");
}); 
```

### Mapas anidados.
Podemos crear mapas anidados para agrupar datos en estructuras más complejas.
```
Map<String, Map<String, dynamic>> capitales = {
  "Brasilia": {"Pais": "Brasil", "Poblacion": 21400000},
  "Buenos Aires": {"Pais": "Argentina", "Poblacion": 3000000},
  "Santiago": {"Pais": "Chile", "Poblacion": 2100000},
  "Bogotá": {"Pais": "Colombia", "Poblacion": 2800000},
  "Lima": {"Pais": "Perú", "Poblacion": 1000000},
  "Madrid": {"Pais": "España", "Poblacion": 3200000},
};
```

### Propiedades útiles de los Map.

Dart proporciona varias propiedades útiles para trabajar con Map:

- keys : Devuelve todas las claves del Map.
- values : Devuelve todos los valores del Map.
- length : Devuelve el número de pares clave-valor.
- isEmpty y isNotEmpty : Indican si el Map está vacío o no.

```
print(capitales.keys);    // Salida: (Brasilia, Buenos Aires, Santiago, Bogotá, Lima)
print(capitales.values);  // Salida: (Madrid, París, Lisboa)
print(capitales.length);  // Salida: 3
print(capitales.isEmpty); // Salida: false
```

