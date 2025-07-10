# FUTURE en Dart y Flutter 
Los Futures son una característica fundamental de Dart que permiten trabajar con operaciones asíncronas. En Flutter, los Futures son esenciales para manejar tareas que toman tiempo, como solicitudes HTTP, lecturas/escrituras de archivos o consultas a bases de datos, sin bloquear la interfaz de usuario.

## 1. ¿Qué es un Future?


Un Future representa un valor que estará disponible en algún momento en el futuro (o nunca si ocurre un error). Es una forma de manejar operaciones asíncronas en Dart, lo que permite que el programa continúe ejecutándose mientras espera que se complete la tarea.

- Un Future puede estar en uno de estos estados:
    - Pendiente : La tarea aún no ha terminado.
    - Completado : La tarea ha terminado con éxito o con un error.


## 2. Sintaxis Básica
Crear un Future
Puedes crear un Future usando el constructor Future o métodos como Future.delayed.

```dart
Future<int> obtenerNumero() {
  return Future.delayed(Duration(seconds: 2), () => 42);
}
```

- Usar un Future
Para manejar el resultado de un Future, puedes usar then para procesar el valor cuando esté disponible y catchError para manejar errores.

```dart
void main() {
  obtenerNumero().then((numero) {
    print("El número obtenido es: $numero");
  }).catchError((error) {
    print("Ocurrió un error: $error");
  });
}
```

## 3. Palabras Clave Asíncronas: async y await
Dart proporciona las palabras clave **async** y **await** para simplificar el trabajo con Futures. Estas hacen que el código sea más legible y fácil de entender.

- **async** : Indica que una función es asíncrona y devuelve un Future.
- **await** : Pausa la ejecución de una función asíncrona hasta que el Future se completa.

Ejemplo con async y await.
```dart
Future<int> obtenerNumero() async {
  await Future.delayed(Duration(seconds: 2)); // Simula una tarea lenta
  return 42;
}

void main() async {
  try {
    int numero = await obtenerNumero();
    print("El número obtenido es: $numero");
  } catch (error) {
    print("Ocurrió un error: $error");
  }
}
```

## 4. Manejo de Errores
Cuando trabajas con Futures, es importante manejar posibles errores. Esto se puede hacer usando catchError o un bloque try-catch con async/await.

Ejemplo de Manejo de Errores:
```dart
Future<int> obtenerNumeroConError() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception("Algo salió mal");
  });
}

void main() async {
  try {
    int numero = await obtenerNumeroConError();
    print("El número obtenido es: $numero");
  } catch (error) {
    print("Error capturado: $error");
  }
}

```
### 5. Uso de Futures en Flutter
En Flutter, los Futures son ampliamente utilizados para manejar operaciones asíncronas, como solicitudes HTTP o acceso a bases de datos. A continuación, se muestra un ejemplo práctico.

Ejemplo: Cargar Datos desde una API
Supongamos que queremos realizar una petición http.

```dart


// SIN AWAIT Y SIN ASINC
void main (){
    print('Inicio del programa');

    httpGet('https://www.tecxart.es').then((value){
        print(value);
    }).catchError((error){
        print('Error capturado: $error');
    });

    print('Fin del programa');
}

Future<String> httpGet(String url) async {
    return Future.delayed(Duration(seconds: 2), () {     
    });
}

// CON AWAIT Y CON ASYNC
import 'dart:async'; // Required for Future and Duration

void main() async {
  print('Inicio del programa');

 try{
 final value = await httpGet ('https://www.tecxart.es');
 print(value);
 }catch (error){
   print ('Tenemos un error: $error');
 }


  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Tenemos un valor de la petición';
}

```

## 6. Buenas Prácticas
- Usa async y await : Hacen que el código sea más legible y fácil de mantener.
- Maneja siempre los errores : Usa bloques try-catch o catchError para evitar que tu aplicación se bloquee por excepciones no controladas.
- Evita bloqueos en la UI : Usa FutureBuilder en Flutter para manejar datos asíncronos sin bloquear la interfaz de usuario.
- Simula retrasos solo en desarrollo : Usa Future.delayed para simular operaciones lentas durante el desarrollo, pero asegúrate de probar con datos reales antes del lanzamiento.

---

## 7. Bloques try, on, finally y catch
En Flutter, puedes manejar errores en las funciones asíncronas utilizando bloques try-catch para capturar y manejar excepciones que puedan ocurrir durante la ejecución de las funciones asíncronas.

### 1. ¿Qué es try-catch?
El bloque try-catch se utiliza para capturar y manejar excepciones que pueden ocurrir durante la ejecución de un bloque de código. Si una excepción se lanza dentro del bloque try, el control se transfiere al bloque catch.

Sintaxis.
```dart
try {
  // Código que puede lanzar una excepción
} catch (error) {
  // Manejo del error
}
```
Ejemplo:
```dart
void main() {
  try {
    int resultado = 10 ~/ 0; // División entre cero
    print(resultado);
  } catch (error) {
    print("Ocurrió un error: $error");
  }
}

// SALIDA:
// Ocurrió un error: IntegerDivisionByZeroException
```
### 2. Uso de on para Filtrar Excepciones

El bloque on permite filtrar excepciones específicas. Esto es útil cuando diferentes tipos de errores requieren diferentes manejos.

Sintaxis.
```dart
try {
  // Código que puede lanzar una excepción
} on TipoEspecificoDeError {
  // Manejo específico para este tipo de error
} catch (error) {
  // Manejo general para otros errores
}
```
Ejemplo:
```dart
void main() {
  try {
    int resultado = 10 ~/ 0;
    print(resultado);
  } on IntegerDivisionByZeroException {
    print("Error: División entre cero detectada.");
  } catch (error) {
    print("Ocurrió un error desconocido: $error");
  }
}

// SALIDA:
// Error: División entre cero detectada.
```

### 3. Uso de finally
El bloque finally se ejecuta siempre, independientemente de si se produjo una excepción o no. Es útil para realizar tareas de limpieza, como cerrar archivos o liberar recursos

Sintaxis:
```dart
try {
  // Código que puede lanzar una excepción
} catch (error) {
  // Manejo del error
} finally {
  // Código que siempre se ejecuta
}
```

Ejemplo:
```dart
void main() {
  try {
    int resultado = 10 ~/ 0;
    print(resultado);
  } catch (error) {
    print("Ocurrió un error: $error");
  } finally {
    print("Este bloque siempre se ejecuta.");
  }
}

// SALIDA:
// Ocurrió un error: DivisionByZeroError: division by zero
// Este bloque siempre se ejecuta.
```

### 4. Combinación de try-catch-on-finally
Puedes combinar todas estas estructuras para manejar errores de manera más granular y asegurarte de que ciertas acciones siempre se realicen.

Ejemplo:
```dart
void main() {
  try {
    int resultado = 10 ~/ 0;
    print(resultado);
  } on IntegerDivisionByZeroException {
    print("Error: División entre cero.");
  } catch (error) {
    print("Ocurrió un error desconocido: $error");
  } finally {
    print("Finalizando proceso...");
  }
}

// SALIDA: 
// Error: División entre cero.
// Finalizando proceso...
```

### 5. Buenas Prácticas
- Usa try-catch solo cuando sea necesario : No abuses de esta estructura; úsala solo en bloques donde puedan ocurrir excepciones previsibles.
- Filtra excepciones con on : Usa on para manejar tipos específicos de errores y evitar capturar excepciones inesperadas.
- Limpia recursos con finally : Asegúrate de liberar recursos o realizar tareas de limpieza en el bloque finally.
- Proporciona mensajes claros : Los mensajes de error deben ser descriptivos para facilitar la depuración.

### 8.Ejercicios de repaso:

#### Ejercicio 1: Simulación de una Tarea Asíncrona
Instrucciones:
- Crea una función llamada obtenerNombre que devuelva un Future<String>. Esta función debe simular una tarea lenta (como una solicitud HTTP o consulta a una base de datos) utilizando Future.delayed durante 3 segundos.
- La función debe devolver el nombre "Juan Pérez" después de completarse.
- En el main, utiliza async/await para llamar a la función obtenerNombre y mostrar el resultado en la consola.
- Asegúrate de manejar cualquier posible error utilizando un bloque try-catch.
        Salida esperada: "Obteniendo nombre...
                          Nombre Obtenido es: Juan Pérez"

[Respuesta](Ejercicio1.dart)



#### Ejercicio: Simulación de una Operación Asíncrona con Condición
- Instrucciones:
  - Crea una función llamada verificarAcceso que devuelva un Future<bool>. Esta función debe simular una tarea lenta (como verificar credenciales en una base de datos) utilizando Future.delayed durante 2 segundos.
  - Si el usuario tiene acceso, la función debe devolver true.
  - Si el usuario no tiene acceso, la función debe devolver false.
  - En el main, utiliza async/await para llamar a la función verificarAcceso y mostrar un mensaje en la consola dependiendo del resultado:
  - Si el resultado es true, muestra: "Acceso concedido."
  - Si el resultado es false, muestra: "Acceso denegado."
  - Asegúrate de manejar cualquier posible error utilizando un bloque try-catch.

[Respuesta](Ejercicio2.dart)