# Variables.
    
    
En este apartado veremos las variables en Dart, Si ya habéis visto otro lenguaje de programación esta parte os será mucho mas
fácil, podremos designar variables con el tipo de dato que queramos, y asignarles un valor, para ello usaremos el siguiente
código:

```dart
int numero = 10;
```

En este caso, hemos definido una variable llamada numero, que es de tipo int, y le hemos asignado el valor de 10, pero en Dart
las variables se pueden usar declarando var, final o const.
- var: Utilizada cuando el tipo de dato no está definido y se define según el valor asignado.
  
 ```dart
var nombre = 'Juan';
var edad = 20;
```

- final: Utilizada cuando el queremos declarar variables cuyos valores no cambiarán después de su inicialización.
    
```dart
final String nombre = 'Juan';
final int edad = 20;
```
    
- const: Usaremos const aunque es parecida a final cuando los valores son constantes en tiempo de compilación, por ejemplo:
    
```dart
const String nombre = 'Juan';
const int edad = 20;
    
```
    
<br>
    
- Dart es un lenguaje fuertemente tipado, lo que significa que cada variable tiene un tipo específico. Los tipos más comunes incluyen:

  - int : Números enteros (positivos o negativos).
  - double : Números decimales.
  - String : Texto o cadenas de caracteres.
  - bool : Valores booleanos (true o false).
  - List : Listas o arreglos.
  - Map : Colecciones de pares clave-valor.
    
```dart
int numero = 10;
double precio = 19.99;
String saludo = "Hola, mundo!";
bool activo = true;

List<int> numeros = [1, 2, 3];
Map<String, dynamic> persona = {
    "nombre": "Juan",
    "edad": 30,
    };
```

- Null Safety
A partir de Dart 2.12, se introdujo la característica de null safety , que ayuda a evitar errores relacionados con valores nulos<br>
Por defecto las variables no puede ser nulas (null), pero para permitir que una variable sea nula, debemos usar el operador ?. (opcional) o el operador ?? (nulo coalescencia).

```dart
String? nombre; // Puede ser null
nombre = "Flutter";

int edad = null; // Error: Las variables no pueden ser null por defecto
int? altura;     // Correcto: Puede ser null
```
También puedes usar operadores como ?? y ! para manejar valores nulos
```dart
String? texto;
String resultado = texto ?? "Valor por defecto"; // Si texto es null, usa "Valor por defecto"

int? numero;
int valor = numero!; // Asegura que numero no es null (puede lanzar una excepción si lo es)
```

Podemos ver el ejemplo y descargar el código en [Variables](02_variables.dart)

## Ejercicios de Variables.

1. Calculadora de Edad
Crea un programa en Dart que:
- Declare una variable edad con tu edad actual.
- Declare otra variable añosFuturos y asígnale un valor entero (por ejemplo, 10).
- Calcule y muestre en la consola tu edad dentro de añosFuturos años.

2. Conversión de Temperatura
Crea un programa que:
- Declare una variable temperaturaCelsius y asígnele un valor numérico.
- Convierta esa temperatura a Fahrenheit usando la fórmula:
- Fahrenheit = Celsius * 9/5 + 32 .
- Muestre el resultado en la consola.

Los ejercicios resueltos están en el código.