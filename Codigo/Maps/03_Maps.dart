//Map con Pokemon

void main() {
  // DECLARACIÓN DE MAPS
  Map<String, dynamic> pokemon = {
    "name": "Pikachu",
    "type": "Electric",
    "level": 10,
    "abilities": ["Static", "Lightning Rod"],
  };

  Map pokemon2 = {
    "name": "Bulbasaur",
    "type": "Grass",
    "level": 10,
    "abilities": ["Overgrow", "Chlorophyll"],
  };

  //TODO: También podemos declarar el Map con var:
  var pokemon3 = {
    "name": "Charmander",
    "type": "Fire",
    "level": 10,
    "abilities": ["Blaze", "Solar Power"],
  };

  //TODO: Imprimir el Map completo:
  print(pokemon);
  print(pokemon2);
  print(pokemon3);

  //TODO: Para acceder a valores específicos, usamos la clave:
  print('nombre: ${pokemon["name"]}');
  print('habilidad: ${pokemon2["abilities"][1]}');
  print('tipo: ' + pokemon3["type"].toString());

  //Valores nulos en Maps
  //TODO: Si intentas acceder a una clave que no existe en el Map, obtendrás un valor nulo:
  print(
    pokemon2["Force"],
  ); // Esto imprimirá null porque "Force" no existe en pokemon2

  //TODO: Para evitar errores, puedes usar el operador ?? para proporcionar un valor por defecto:
  print(
    pokemon2["Force"] ?? "No tiene fuerza",
  ); // Esto imprimirá "No tiene fuerza" si "Force" no existe en pokemon2

  //TODO: Manipulación de Maps
  //Añadir una Clave - Valor
  pokemon["Force"] = 100; // Agregar una nueva clave "Force" con valor 100
  print(pokemon);
  //Modificar un Valor
  pokemon["name"] = "Raichu"; // Cambiar el valor de la clave "name"
  print(pokemon);
  //Eliminar una Clave - Valor
  pokemon.remove("Force"); // Eliminar la clave "Force"
  print(pokemon);

  // Para recorrer un Map vamos a crear un map de Capitales.
  var capitales = {
    "Argentina": "Buenos Aires",
    "Brasil": "Brasilia",
    "Chile": "Santiago",
    "Colombia": "Bogotá",
    "Perú": "Lima",
    "España": "Madrid",
    "Francia": "París",
  };
  // Recorrer el Map con un forEach
  print('Bucle forEach:');
  print('');
  capitales.forEach((pais, capital) {
    print('La capital de $pais es $capital');
  });
  // Recorrer el Map con un for in
  print('');
  print('Bucle for in:');
  for (var entry in capitales.entries) {
    print('La capital de ${entry.key} es ${entry.value}');
  }

  //Mapas anidados
  Map<String, Map<String, dynamic>> paises = {
    "Argentina": {
      "capital": "Buenos Aires",
      "poblacion": 45000000,
      "moneda": "Peso Argentino",
    },
    "Brasil": {
      "capital": "Brasilia",
      "poblacion": 210000000,
      "moneda": "Real Brasileño",
    },
    "Chile": {
      "capital": "Santiago",
      "poblacion": 19000000,
      "moneda": "Peso Chileno",
    },
    "España": {"capital": "Madrid", "poblacion": 47000000, "moneda": "Euro"},
  };
  print('');
  print(paises["España"]); // Imprime el Map de España
  print(paises["España"]?["capital"]); // Imprime la capital de España

  print(
    'cantidad de elementos en el Map capitales: ${capitales.length}',
  ); // Imprime la cantidad de elementos en el Map capitales
}
