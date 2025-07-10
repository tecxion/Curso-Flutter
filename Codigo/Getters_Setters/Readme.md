# Manual de Getters y Setters


En Dart, los getters y setters son métodos especiales que permiten acceder y modificar las propiedades de una clase de manera controlada. Son útiles para encapsular datos y aplicar lógica adicional cuando se accede o modifica una propiedad.

### 1. ¿Qué son los **Getters y Setters**?

- **Getter** : Es un método que se utiliza para obtener el valor de una propiedad.
- **Setter** : Es un método que se utiliza para modificar el valor de una propiedad.


Ambos proporcionan una interfaz para interactuar con las propiedades de una clase, permitiendo agregar validaciones o lógica personalizada.


### 2. Sintaxis de **Getters y Setters**:

- **Getter**:
```dart
tipo get nombrePropiedad {
  // Lógica para obtener el valor
  return valor;
}
```
- **Setter**:
```dart
void set nombrePropiedad(tipo valor) {
  // Lógica para modificar el valor
  this.nombrePropiedad = valor;
}
```

- Ejemplo básico:
```dart
class Persona {
  String _nombre; // Propiedad privada (encapsulada)
  int _edad;

  // Constructor
  Persona(this._nombre, this._edad);

  // Getter para obtener el nombre
  String get nombre => _nombre;

  // Setter para modificar el nombre
  set nombre(String nuevoNombre) {
    if (nuevoNombre.isNotEmpty) {
      _nombre = nuevoNombre;
    } else {
      print("El nombre no puede estar vacío.");
    }
  }

  // Getter para obtener la edad
  int get edad => _edad;

  // Setter para modificar la edad
  set edad(int nuevaEdad) {
    if (nuevaEdad >= 0) {
      _edad = nuevaEdad;
    } else {
      print("La edad no puede ser negativa.");
    }
  }
}

void main() {
  Persona persona = Persona("Juan", 25);

  // Usar el getter para obtener el nombre
  print(persona.nombre); // Salida: Juan

  // Usar el setter para modificar el nombre
  persona.nombre = "Carlos";
  print(persona.nombre); // Salida: Carlos

  // Intentar asignar un nombre vacío
  persona.nombre = ""; // Salida: El nombre no puede estar vacío.

  // Usar el getter para obtener la edad
  print(persona.edad); // Salida: 25

  // Usar el setter para modificar la edad
  persona.edad = 30;
  print(persona.edad); // Salida: 30

  // Intentar asignar una edad negativa
  persona.edad = -5; // Salida: La edad no puede ser negativa.
}
```

### 3. Ventajas de Usar Getters y Setters
- Encapsulamiento : Protegen las propiedades privadas de la clase (_nombre, _edad) y evitan que se modifiquen directamente.
- Validación : Permiten agregar lógica para validar los valores antes de asignarlos o devolverlos.
- Control de Acceso : Puedes exponer solo ciertas propiedades para lectura (getter) o escritura (setter), según sea necesario.
- Limpieza del Código : Los getters y setters hacen que el código sea más legible y organizado.

### 4. Casos de Uso Comunes
- a. Validación de datos:
Los setters pueden incluir validaciones para asegurarse de que los valores sean correctos antes de asignarlos.
```dart
set precio(double nuevoPrecio) {
  if (nuevoPrecio > 0) {
    _precio = nuevoPrecio;
  } else {
    throw Exception("El precio debe ser mayor que cero.");
  }
}
```

- b. Cálculo Dinámico.
Los getters pueden calcular valores dinámicamente en lugar de almacenarlos como propiedades.
```dart
double get area => _base * _altura;
```

- c. Propiedades de Solo Lectura.
Si no defines u setter, la propiedad será de solo lectura.
```dart
String get nombreCompleto => "$_nombre $_apellido";
```

### 5. Buenas Prácticas

- Usa getters y setters cuando necesites controlar el acceso a las propiedades de una clase.
- Prefiere propiedades privadas (_nombre) para encapsular los datos.
- Mantén los getters y setters simples y enfocados en una sola tarea.
- Evita sobrecargar los setters con lógica compleja. Si es necesario, crea métodos específicos.

## Aserciones

Dentro de los Getters y lo Setters vamos a contemplar algo que está dentro de las clases que son las aserciones, y son una forma de asegurar que los valores que se asignan a las propiedades de una clase cumplan con ciertas condiciones, para garantizar la integridad de los datos.

### 1. ¿Qué son las Aserciones?
Una aserción es una declaración que verifica si una condición es verdadera. Si la condición es falsa, el programa lanza una excepción y se detiene. Las aserciones son útiles para:

- Validar suposiciones en el código.
- Detectar errores durante el desarrollo.
- Garantizar que los datos cumplan con ciertos requisitos.
- En Dart, las aserciones se activan solo en modo de desarrollo (debug mode). En modo de producción (release mode), las aserciones no tienen efecto, lo que evita que afecten el rendimiento del programa.


### 2. Sintaxis de Aserciones:

Sintaxis básica de una aserción en Dart:
```dart
assert(condicion, mensaje);
```
- **condicion**: La condición que se evalúa. Si es falsa, se lanza una excepción.
- **mensaje**: Un mensaje opcional que se muestra si la condición es falsa. Si no se proporciona, se muestra un mensaje predeterminado.

### 3. Ejemplo de Aserciones en Getters y Setters:
```dart
void main() {
  int edad = 15;

  // Verifica que la edad sea mayor o igual a 18
  assert(edad >= 18, "La edad debe ser mayor o igual a 18");

  print("El usuario tiene $edad años.");
}
```

### 4. Uso de Aserciones en Flutter
En Flutter, las aserciones son útiles para validar propiedades de widgets, argumentos de funciones o estados de la aplicación. Aquí tienes algunos ejemplos prácticos:

- a. Validar Propiedades de Widgets
Supongamos que tienes un widget personalizado que requiere un valor positivo para su propiedad size.
```dart
class MiWidget extends StatelessWidget {
  final double size;

  const MiWidget({required this.size}) : assert(size > 0, "El tamaño debe ser positivo");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: Colors.blue,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: MiWidget(size: -10), // Esto lanzará una aserción
      ),
    ),
  ));
}
```
Si intentas crear un MiWidget con un tamaño negativo, obtendrás un error de aserción durante el desarrollo.

- b. Validar Argumentos de Funciones
Supongamos que tienes una función que espera un número entero positivo.
```dart
void dividir(double numerador, double denominador) {
  assert(denominador != 0, "El denominador no puede ser cero");
  print(numerador / denominador);
}

void main() {
  dividir(10, 2); // Salida: 5.0
  dividir(10, 0); // Lanza una aserción: El denominador no puede ser cero
}
```

- c. Validar Estados de la Aplicación
Supongamos que tienes una aplicación que requiere un estado inicial válido.
```dart
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    assert(_count >= 0, "El contador no puede ser negativo");
    _count = 0;
    notifyListeners();
  }
}
```
Si _count es manipulado incorrectamente y se vuelve negativo, la aserción lanzará un error.

>[!WARNING]
>En el modo debug, los assert se ejecutan en tiempo de ejecución. En el modo release, se eliminan, por lo que no tendrán ningún efecto sobre tu aplicación.

--- 

## Ejercicios.
### Ejercicio 1: Clase CuentaBancaria

Instrucciones:
- Crea una clase llamada CuentaBancaria que tenga las siguientes propiedades privadas:
    - _titular: Una cadena que representa el nombre del titular de la cuenta.
    - _saldo: Un número que representa el saldo actual de la cuenta.
- Implementa un constructor que inicialice el _titular y el _saldo.
- Crea un getter para obtener el saldo (saldo) de la cuenta.
- Crea un setter para modificar el saldo (saldo). Asegúrate de que el nuevo saldo no sea negativo. Si se intenta asignar un valor negativo, muestra un mensaje de error y no actualices el saldo.
- En el main, crea un objeto de la clase CuentaBancaria y prueba los métodos getter y setter para acceder y modificar el saldo.

[Solución](Ejercicio1.dart)

### Ejercicio 2: Clase Producto

Instrucciones:
- Crea una clase llamada Producto que tenga las siguientes propiedades privadas:
    - _nombre: Una cadena que representa el nombre del producto.
    - _precio: Un número que representa el precio del producto.
- Implementa un constructor que inicialice el _nombre y el _precio.
- Crea un getter para obtener el precio (precio) del producto.
- Crea un setter para modificar el precio (precio). Asegúrate de que el nuevo precio sea mayor que cero. Si se intenta asignar un precio menor o igual a cero, muestra un mensaje de error y no actualices el precio.
- En el main, crea un objeto de la clase Producto y prueba los métodos getter y setter para acceder y modificar el precio.


[Solución](Ejercicio2.dart)
