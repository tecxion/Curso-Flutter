# Clases en Dart

La Programación Orientada a Objetos (POO) es un paradigma de programación que organiza el código en objetos, los cuales son instancias de clases . Una clase es como una plantilla o molde que define las propiedades y comportamientos de un objeto. En este manual, aprenderás los conceptos básicos de las clases en Dart con ejemplos cortos y fáciles de entender.

## 1. Definición de una clase
Una clase es una plantilla o molde que define las propiedades y comportamientos de un objeto. Para definir una clase en Dart, utiliza la palabra clave `class` seguida del nombre de la clase.

Ejemplo:
```dart
class Persona {
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Método
  void saludar() {
    print("Hola, me llamo $nombre y tengo $edad años.");
  }
}

void main() {
  // Crear un objeto (instancia) de la clase Persona
  Persona persona1 = Persona("Juan", 25);
  persona1.saludar(); // Salida: Hola, me llamo Juan y tengo 25 años.
}
```

## 2. Propiedades (Atributos)
Las propiedades son variables que pertenecen a una clase y representan las características de un objeto. Por ejemplo, en una clase Persona, las propiedades podrían ser nombre y edad.

Ejemplo:
```dart
class Coche {
  String marca;
  String color;

  // Constructor
  Coche(this.marca, this.color);
}

void main() {
  Coche miCoche = Coche("Toyota", "Rojo");
  print("Mi coche es un ${miCoche.marca} de color ${miCoche.color}.");
  // Salida: Mi coche es un Toyota de color Rojo.
}
```

## 3. Métodos
Los métodos son funciones que pertenecen a una clase y representan las acciones que un objeto puede realizar. Por ejemplo, en una clase Persona, un método podría ser saludar() que imprime un mensaje de saludo.

Ejemplo:
```dart
class Perro {
  String nombre;

  // Constructor
  Perro(this.nombre);

  // Método
  void ladrar() {
    print("$nombre está ladrando: ¡Guau guau!");
  }
}

void main() {
  Perro miPerro = Perro("Toby");
  miPerro.ladrar(); // Salida: Toby está ladrando: ¡Guau guau!
}
```

## 4. Constructores
Un constructor es un método especial que se ejecuta cuando se crea un objeto de una clase. Se utiliza para inicializar las propiedades del objeto.

Ejemplo:
```dart
class Libro {
  String titulo;
  String autor;

  // Constructor
  Libro(this.titulo, this.autor);

  // Método
  void mostrarInfo() {
    print("El libro '$titulo' fue escrito por $autor.");
  }
}

void main() {
  Libro libro1 = Libro("Cien años de soledad", "Gabriel García Márquez");
  libro1.mostrarInfo();
  // Salida: El libro 'Cien años de soledad' fue escrito por Gabriel García Márquez.
}
```

## 5. Encapsulamiento
El encapsulamiento es un principio de POO que permite controlar el acceso a las propiedades y métodos de una clase. En Dart, puedes usar _ antes del nombre de una propiedad para hacerla privada.

Ejemplo:
```dart
class CuentaBancaria {
  String _titular; // Propiedad privada
  double saldo;

  // Constructor
  CuentaBancaria(this._titular, this.saldo);

  // Método para acceder a la propiedad privada
  String get titular => _titular;

  // Método para modificar la propiedad privada
  set titular(String nuevoTitular) {
    _titular = nuevoTitular;
  }

  void mostrarSaldo() {
    print("El saldo de $_titular es: \$$saldo");
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria("Juan", 1000.0);
  cuenta.mostrarSaldo(); // Salida: El saldo de Juan es: $1000.0

  cuenta.titular = "María"; // Modificar el titular usando el setter
  cuenta.mostrarSaldo(); // Salida: El saldo de María es: $1000.0
}
```

## 6. Herencia
La herencia permite que una clase (hija) herede propiedades y métodos de otra clase (padre). Esto ayuda a reutilizar código.

Ejemplo:
```dart
// Clase padre
class Animal {
  String nombre;

  Animal(this.nombre);

  void emitirSonido() {
    print("$nombre está haciendo un sonido.");
  }
}

// Clase hija
class Gato extends Animal {
  Gato(String nombre) : super(nombre);

  @override
  void emitirSonido() {
    print("$nombre está maullando: ¡Miau miau!");
  }
}

void main() {
  Animal animal = Animal("Animal genérico");
  animal.emitirSonido(); // Salida: Animal genérico está haciendo un sonido.

  Gato gato = Gato("Tom");
  gato.emitirSonido(); // Salida: Tom está maullando: ¡Miau miau!
}
```
## 7. Clases Abstractas
Una clase abstracta es una clase que no se puede instanciar directamente y sirve como base para otras clases. Puede contener métodos abstractos (sin implementación).

Ejemplo:
```dart
abstract class Figura {
  void calcularArea(); // Método abstracto
}

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  void calcularArea() {
    print("El área del círculo es: ${3.1416 * radio * radio}");
  }
}

void main() {
  Circulo circulo = Circulo(5);
  circulo.calcularArea(); // Salida: El área del círculo es: 78.53999999999999
}
```
## 8. Polimorfismo
El polimorfismo en Dart permite que objetos de diferentes clases puedan ser tratados de manera uniforme. Puedes usar métodos abstractos en una clase base y implementarlos en clases derivadas.

Ejemplo:
```dart
abstract class Figura {
  void calcularArea();
}
class Circulo extends Figura {
  double radio;
  Circulo(this.radio);
  @override
  void calcularArea() {
    print("El área del círculo es: ${3.1416 * radio * radio}");
  }
}
class Rectangulo extends Figura {
  double base, altura;
  Rectangulo(this.base, this.altura);
  @override
  void calcularArea() {
    print("El área del rectángulo es: $base * $altura");
  }
}
void main() {
  Circulo circulo = Circulo(5);
  circulo.calcularArea(); // Salida: El área del círculo es: 7
  ```

## 9. Buenas Prácticas
- Usa nombres descriptivos para tus clases, propiedades y métodos.
- Aplica el principio de encapsulamiento para proteger los datos sensibles.
- Utiliza la herencia solo cuando tenga sentido para evitar complicaciones innecesarias.
- Divide tu código en clases pequeñas y enfocadas en una sola responsabilidad.


En el código podrás ver más ejemplos y ejercicios resueltos. [Ver código](clases.dart)

--- 
### Ejercicio 1:
Ejercicio 1: Crear una Clase Rectángulo
Instrucciones:
- Crea una clase llamada Rectangulo que tenga las siguientes propiedades:
- base: un número que representa la base del rectángulo.
- altura: un número que representa la altura del rectángulo.
- Agrega un constructor que inicialice estas propiedades.
- Implementa un método llamado calcularArea que calcule y devuelva el área del rectángulo usando la fórmula:
- Área = base * altura .
- En el main, crea dos objetos de la clase Rectangulo con diferentes valores de base y altura, y muestra el área de cada uno.

### Ejercicio 2: Crear una Clase Estudiante
Instrucciones:
- Crea una clase llamada Estudiante que tenga las siguientes propiedades:
- nombre: una cadena que representa el nombre del estudiante.
- edad: un número entero que representa la edad del estudiante.
- cursos: una lista de cadenas que representa los cursos en los que está inscrito.
- Agrega un constructor que inicialice estas propiedades.
- Implementa un método llamado mostrarInformacion que muestre el nombre, la edad y los cursos del estudiante en la consola.
- En el main, crea al menos dos objetos de la clase Estudiante con diferentes datos y llama al método mostrarInformacion para cada uno.



>[!important]
>Si queremos sobre escribir un método de la clase padre, debemos usar la palabra reservada `@override` antes del método que queremos sobre escribir, a continuación os dejo un ejemplo:


```dart
void main {

    persona = Persona(nombre: "Juan", edad: 25);
    print(persona());

}

class Persona {
    String nombre;
    int edad;

    // Constructor
    Persona({ // Al poner las llaves {} dentro del constructor hacemos que al invocar la clase persona podamos indicarel nombre y edad del objeto que queremos crear como se puede ver en el main. (nombre: "Juan", edad: 25)
        required this.nombre, 
        this.edad = 0
    });

    @Override // Este Override sobre escribe el método nativo toString que si no lo sobreescribamos nos devolvería el nombre de la clase.
    String toString(){
        return "Hola, me llamo $nombre y tengo $edad años.";
    }
}

```

### Name Constructor.

Cuando trabajemos con peticiones html y estemos haciendo clases podemos tener diversos problemas para llamar al constructor de la clase, para ello podemos usar el name constructor, en el que podemos pasarle los parametros que queramos y crear un objeto con los valores que queramos.
- Ejemplo:


```dart
void main () {

  // Creamos un objeto de la clase Heroe
  Heroe heroe1 = Heroe(nombre: "Batman", poder: "Dinero", estaVivo: true);
  print(heroe1); // Esto imprimirá por pantalla Batman tiene el poder de Dinero y esta vivo: si.

  //Pero que pasa si tenemos esta invocación a la clase Heroe.
  final Map<String, dynamic> rawJson = {
    "nombre": "Superman",
    "poder": "Volar",
    "estaVivo": false
  };

  // Creamos un objeto de la clase Heroe con el name constructor.
  Heroe heroe2 = Heroe.fromMap(rawJson);
  print(heroe2); // Esto imprimirá por pantalla Superman tiene el poder de Volar y esta vivo: no.

}

class Heroe {

  // Variables de la clase
  String nombre;
  String poder;
  bool estaVivo;

  // Constructor de la clase
  Heroe({required this.nombre, required this.poder, required this.estaVivo});

  //Para resolver el problema de llamar a la clase desde el Map podemos resolverlo de la siguiente manera, creando un constructor y el nombre del constructor.

  Heroe.fromMap(Map<String, dynamic> rawJson){  //Heroe.fromMap es el nombre del constructor o Name Constructor.
    // Esto es lo que hace el name constructor, se le pasa un Map y se le asignan los valores del Map a las variables de la clase.
    this.nombre = rawJson['nombre'];
    this.poder = rawJson['poder'];
    this.estaVivo = rawJson['estaVivo'];
  }


  @Override
  String toStrin(){
    return '$nombre tiene el poder de $poder y esta vivo: ${ estaVivo ? 'si.' : 'no.'}';
  }

}

```

---

## Mixin en Dart
Los mixins son una característica poderosa de Dart que permite reutilizar código en múltiples clases sin usar herencia múltiple. Un mixin es una forma de compartir métodos y propiedades entre clases sin necesidad de crear una jerarquía de herencia compleja.

### 1. ¿Qué son los Mixins?
Un mixin es una clase que contiene métodos y propiedades que pueden ser "mezclados" (añadidos) a otras clases. A diferencia de la herencia tradicional, una clase puede usar varios mixins simultáneamente, lo que facilita la composición de comportamientos.

En Dart, los mixins se definen como clases normales pero con la restricción de que no pueden tener constructores.

### 2. Sintaxis Básica
Para definir un mixin, se usa la palabra clave mixin:
```dart
mixin NombreMixin {
  void metodoCompartido() {
    print("Este método es compartido por varias clases.");
  }
}
```
- Para usar un mixin en una clase, se utiliza la palabra clave with

```dart
class MiClase with NombreMixin {
  // La clase ahora tiene acceso a los métodos y propiedades del mixin
}

void main() {
  MiClase objeto = MiClase();
  objeto.metodoCompartido(); // Salida: Este método es compartido por varias clases.
}
```

### 3. Ventajas de Usar Mixins
Reutilización de Código : Los mixins permiten compartir funcionalidades comunes entre clases sin duplicar código.
Evitar Herencia Múltiple : Dart no permite herencia múltiple directa, pero los mixins ofrecen una alternativa flexible.
Composición sobre Herencia : Los mixins promueven el principio de "composición sobre herencia", lo que hace que el código sea más modular y mantenible.

### 4. Ejemplo:
En el siguiente ejemplo está implementado a relación de esta web donde explican el mixin [Visitar mixin](https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3){:target="_blank"}.
<a href="https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3" target="_blank">Visitar mixin</a>


```dart

abstract class Animal {} // Clase abstracta principal, donde todos los animales heredan de esta clase.

abstract class Mamifero extends Animal {} // Luego cada Animal puede estar dentro de una de estas clases.

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// Y cada animal puede tener un comportamiento diferente, por ejemplo:

mixin Volador {
  void volar() => print('estoy volando'); 
}

mixin Caminante {
  void caminar() => print('estoy caminando');
}

mixin Nadador {
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}


void main() {
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final lucas = Pato();
  lucas.volar();
  lucas.caminar();
  lucas.nadar();
} // Main


  //Sigue implementando más animales.
```

### 5. Uso de Mixins en Flutter
En Flutter, los mixins son útiles para compartir comportamientos comunes entre widgets o clases de lógica. Por ejemplo:

ChangeNotifier : Es un mixin comúnmente usado en Flutter para gestionar el estado de la aplicación. Permite notificar a los widgets cuando cambia el estado.

```dart
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notifica a los listeners sobre el cambio
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ejemplo de Mixin")),
        body: Center(
          child: ChangeNotifierProvider(
            create: (_) => Counter(),
            child: ContadorWidget(),
          ),
        ),
      ),
    );
  }
}

class ContadorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Contador: ${counter.count}"),
        ElevatedButton(
          onPressed: () => counter.increment(),
          child: Text("Incrementar"),
        ),
      ],
    );
  }
}
``` 