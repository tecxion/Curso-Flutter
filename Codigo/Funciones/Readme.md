# Manual de Funciones en Dart

En Dart, las **funciones** son bloques de código reutilizables que realizan una tarea específica. Son esenciales para estructurar y organizar el código de manera clara y eficiente. Este manual te guiará a través de los conceptos fundamentales de las funciones en Dart, con ejemplos prácticos y explicaciones detalladas.

## 1. ¿Qué es una Función?
Una función es un bloque de código que encapsula una tarea específica. Puede recibir parámetros (datos de entrada), realizar operaciones y devolver un resultado (opcional). Las funciones permiten escribir código modular, lo que facilita su mantenimiento y reutilización.

```
void saludar() {
  print("¡Hola, mundo!");
}

void main() {
  saludar(); // Llama a la función y mostrará en salida ¡Hola, mundo!
}
```

## 2. Sintaxis de una Función
La sintaxis básica de una función en Dart es:
```
tipoRetorno nombreFuncion(parametro1, parametro2, ...) {
  // Código de la función
  return valor; // Opcional, dependiendo del tipo de retorno
}
```
- tipoRetorno : El tipo de dato que devuelve la función (void si no devuelve nada).
- nombreFuncion : El nombre que identifica a la función.
- parametros : Variables que reciben valores de entrada (opcionales).
- return : Devuelve un valor al final de la función (solo si tipoRetorno no es void).

## 3. Tipos de Funciones


### * Funciones sin Parámetros ni Retorno

Estas funciones no reciben parámetros ni devuelven un valor. Se declaran con el tipo void.
```
void imprimirMensaje() {
  print("Este es un mensaje simple.");
}

void main() {
  imprimirMensaje();
}

// Salida Este es un mensaje simple.
```

### * Funciones con Parámetros
Las funciones pueden recibir uno o más parámetros para procesar datos específicos.
```
void saludar(String nombre) {
  print("¡Hola, $nombre!");
}

void main() {
  saludar("Juan");
  saludar("María");
}
// Salida
// ¡Hola, Juan!
// ¡Hola, María!
``` 

### * Funciones con Retorno
Si una función debe devolver un valor, se especifica el tipo de retorno y se usa la palabra clave return.
```
int sumar(int a, int b) {
  return a + b;
}

void main() {
  int resultado = sumar(5, 7);
  print("El resultado es: $resultado");
}
//Salida "El resultado es: 12"
```
### * Parámetros en Funciones
Dart ofrece varias formas de manejar parámetros en funciones:

- a. Parámetros Obligatorios
Los parámetros obligatorios deben ser proporcionados cuando se llama a la función.
```
void mostrarNombreCompleto(String nombre, String apellido) {
  print("Nombre completo: $nombre $apellido");
}

void main() {
  mostrarNombreCompleto("Juan", "Pérez");
}
// Salida
// Nombre completo: Juan Pérez

```
- b. Parámetros Opcionales
Los parámetros opcionales se definen entre corchetes []. Si no se proporcionan, toman un valor predeterminado (null o el valor asignado).
```
void saludar([String? nombre]) {
  if (nombre != null) {
    print("¡Hola, $nombre!");
  } else {
    print("¡Hola, desconocido!");
  }
}

void main() {
  saludar();        // Sin nombre
  saludar("María"); // Con nombre
}
//Salida
// ¡Hola, desconocido!
// ¡Hola, María!
```

- c. Parámetros Nombrados
Los parámetros nombrados se definen entre llaves {}. Permiten pasar argumentos en cualquier orden.
```
void mostrarInfo({String? nombre, int? edad}) {
  print("Nombre: $nombre, Edad: $edad");
}

void main() {
  mostrarInfo(nombre: "Juan", edad: 25);
  mostrarInfo(edad: 30, nombre: "María");
}
//Salida
// Nombre: Juan, Edad: 25
// Nombre: María, Edad: 30
```

- d. Valores Predeterminados
Puedes asignar valores predeterminados a los parámetros usando =.
```
void saludar({String nombre = "Desconocido"}) {
  print("¡Hola, $nombre!");
}

void main() {
  saludar();              // Usa el valor predeterminado
  saludar(nombre: "Ana"); // Sobrescribe el valor predeterminado
}
//Salida
// ¡Hola, Desconocido!
// ¡Hola, Ana!
```

### * Funciones anónimas.
Las funciones anónimas son funciones sin nombre. Se utilizan comúnmente como callbacks o dentro de estructuras de control.
```
void main() {
  var suma = (int a, int b) {
    return a + b;
  };

  print("El resultado es: ${suma(5, 7)}");
}
//Salida
// El resultado es: 12
```

### * Arrow Functions (Funciones Flecha)
Las funciones flecha (=>) son una forma abreviada de escribir funciones simples que tienen una sola expresión.
```
int sumar(int a, int b) => a + b;

void main() {
  print("El resultado es: ${sumar(5, 7)}");
}
//Salida
// El resultado es: 12
```

### * Null Safety en Funciones
Con la introducción de null safety , puedes asegurarte de que los parámetros y los valores de retorno no sean nulos accidentalmente
```
String obtenerNombre(String? nombre) {
  return nombre ?? "Desconocido";
}

void main() {
  print(obtenerNombre(null));      // Salida: Desconocido
  print(obtenerNombre("Carlos"));  // Salida: Carlos
}
```
---

Funciones en Dart son un concepto fundamental para la programación orientada a objetos y para estructurar el código de manera organizada. Aprende a utilizarlas de manera efectiva en tus proyectos Dart y alcanza un nivel de código más limpio y mantenible.

---

### Buenas Prácticas

- Usa nombres descriptivos para tus funciones y parámetros.
- Prefiere funciones pequeñas y enfocadas en una sola tarea.
- Utiliza void para funciones que no devuelvan un valor.
- Adopta null safety para evitar errores relacionados con valores nulos.
- Escribe comentarios para explicar el propósito de tus funciones.
- Usa funciones flecha (=>) para simplificar funciones de una sola línea.

---

### Ejercicios
#### Ejercicio 1:
Crea un programa que calcule el área de varios rectángulos utilizando una función. La función debe recibir la base y la altura como parámetros y devolver el área.

Instrucciones:
- Define una función llamada calcularAreaRectangulo que reciba dos parámetros: base y altura, ambos de tipo double.
- Dentro de la función, calcula el área usando la fórmula:
- Área = base * altura .
- Llama a la función con cada par de valores y muestra el resultado en la consola.

#### Ejercicio 2:
Crea una función que reciba dos números y retorne el mayor de ellos.
Instrucciones:
- Define una función llamada encontrarMayor que tome dos parámetros: num1 y num2, ambos de tipo num.
- Dentro de la función, compara los valores y devuelve el mayor de los dos.
- Llama a la función y muestra el resultado en la consola.


Puedes hacer e inventarte todos los ejercicios que quieras yo te he dejado los dos que he hecho para que te sirvan de guía y puedes consultar los resultados en el código [Código](funciones.dart).