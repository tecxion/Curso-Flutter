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
