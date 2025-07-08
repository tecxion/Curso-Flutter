void main() {
  // Map
  final Map<String, dynamic> pokemon = {
    "name": "Pikachu",
    "type": "Electric",
    "level": 10,
    "abilities": ["Static", "Lightning Rod"],
  };

  print(pokemon);
  print('nombre: ${pokemon["name"]}');

  // Otro Map
  Map pokemon2 = {
    "name": "Bulbasaur",
    "type": "Grass",
    "level": 10,
    "abilities": ["Overgrow", "Chlorophyll"],
  };
  print(pokemon2);
  print('nombre: ' + pokemon2["name"]);
  print('habilidad: ${pokemon2["abilities"][1]}');
}
