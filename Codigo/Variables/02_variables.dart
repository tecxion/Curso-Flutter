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

  // TODO: Ejemplo de variables dinámicas
  dynamic dynamicVariable = 'This can be anything';
  print('Variable dinámica: $dynamicVariable');
  dynamicVariable = 42;
  print('Variable dinámica actualizada: $dynamicVariable');
  dynamicVariable = true;
  print('Variable dinámica actualizada: $dynamicVariable');
  dynamicVariable = [1, 2, 3, 4];
  print('Variable dinámica actualizada: $dynamicVariable');

  // TODO: Ejemplo de variables nulas
  String? nullableVariable = null; // Variable que puede ser nula
  print('Variable nula: $nullableVariable');
  nullableVariable = 'Ahora tiene un valor';
  print('Variable nula actualizada: $nullableVariable');
  // Si intentamos asignar un valor nulo a una variable no anulable, Dart
  // nos dará un error de compilación.
  // String nonNullableVariable = null; // Esto causará un error de compilación
  // Para permitir que una variable sea nula, debemos usar el operador ?.
}
