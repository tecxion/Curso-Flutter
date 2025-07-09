// Para ver los comentarios en colores tengo instalado el plugin Better Comments.
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

  /* 
  
  ? --  EJERCICIOS DE REPASO --
  ? Aquí tienes algunos ejercicios de repaso para practicar lo que has aprendido sobre variables en Dart.
  ? Puedes intentar resolverlos por tu cuenta y luego comparar tus soluciones con las que se proporcionan
  ? a continuación.
  
  */

  /* 
  ! Ejercicio Repaso:
  ? Declara una variable de tipo String llamada "nombre" y asígnale un valor.
  ? Imprime el valor de la variable en la consola.

  */
  String nombre = 'Juan Pérez';
  print('Nombre: $nombre');

  /*
  ! 1. Calculadora de Edad
    ? Crea un programa en Dart que:

    ? - Declare una variable edad con tu edad actual.
    ? - Declare otra variable añosFuturos y asígnale un valor entero (por ejemplo, 10).
    ? - Calcule y muestre en la consola tu edad dentro de añosFuturos años.
*/
  // **Ejercicio 1 Resuelto**
  int edad = 38;
  int aniosFuturos = 10;
  int edadFutura = edad + aniosFuturos;

  /*
  !2. Conversión de Temperatura
  ? Crea un programa que:

  ? - Declare una variable temperaturaCelsius y asígnele un valor numérico.
  ? - Convierta esa temperatura a Fahrenheit usando la fórmula:
  ? - Fahrenheit = Celsius * 9/5 + 32 .
  ? -Muestre el resultado en la consola.
  */

  // **Ejercicio 2 Resuelto**
  double temperaturaCelsius = 25.0;
  double temperaturaFahrenheit = temperaturaCelsius * 9 / 5 + 32;
  print('Temperatura en Fahrenheit: $temperaturaFahrenheit');
}
