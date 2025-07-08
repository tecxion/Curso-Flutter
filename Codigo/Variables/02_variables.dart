void main() {
  // Variables
  var name = 'John Doe';
  int age = 30;
  double height = 175.8;
  bool isEmployed = true;
  final String country = 'USA';
  const String language = 'English';

  // TODO: Imprimir las variables
  // TODO: Puedes usar el operador de interpolación de cadenas para imprimir variables
  print('Información de la persona:');
  print('nombre: $name');
  print('Edad: $age años');
  print('Altura: $height cm');
  print('Es empleado: $isEmployed');
  print('País: $country');
  print('Idioma: $language');

  // TODO: Imprimir variables en una sola línea
  print(
    'Información de la persona: ' +
        'nombre: $name, Edad: $age años, Altura: $height cm, ' +
        'Es empleado: $isEmployed, País: $country, Idioma: $language',
  );
}
