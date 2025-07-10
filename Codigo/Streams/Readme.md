# Manual de Streams en Dart
Los Streams son una característica poderosa de Dart que permiten manejar flujos de datos asíncronos. Son especialmente útiles para procesar eventos, como respuestas de APIs, interacciones del usuario o actualizaciones en tiempo real. Este manual te guiará a través de los conceptos básicos de los Streams y cómo usarlos en Dart.

## 1. ¿Qué es un Stream?
Un Stream es una secuencia de eventos (datos) que se emiten de manera asíncrona. Puedes pensar en un Stream como una tubería donde los datos fluyen uno tras otro. Los Streams pueden emitir múltiples valores a lo largo del tiempo, lo que los hace ideales para manejar datos en tiempo real.

Tipos de Streams
Single-subscription Streams : Permiten una única suscripción. Se utilizan cuando los datos deben ser consumidos por un solo listener.
Broadcast Streams : Permiten múltiples suscripciones. Son útiles cuando varios listeners necesitan acceder al mismo flujo de datos.

## 2. Sintaxis Básica
- Crear un Stream
Puedes crear un Stream usando el constructor Stream o métodos como Stream.fromIterable.

```dart
Stream<int> numeros = Stream.fromIterable([1, 2, 3, 4, 5]);
```

- Escuchar un Stream
Para escuchar los datos emitidos por un Stream, usa el método listen.
```dart
void main() {
  Stream<int> numeros = Stream.fromIterable([1, 2, 3, 4, 5]);

  numeros.listen((numero) {
    print("Número recibido: $numero");
  });
}
```
- Salida:
```
Número recibido: 1
Número recibido: 2
Número recibido: 3
Número recibido: 4
Número recibido: 5
```

#### Otro ejemplo más sencillo
```dart
void main (){
  
  emitNumbers().listen( (value ) { //Llamamos al stream
    print('Stream value: $value');
  });
  
  
}

Stream <int> emitNumbers(){
  
  return Stream.periodic(const Duration(seconds: 1), (value){
    // print('desde periodic $value');
    return value;
  }).take(5); //tomamos 5 elementos si quitamos el take 5, imprimira hasta que cancelemos o salgamos...
}
       
```

## 3. Métodos Comunes de Streams
Dart proporciona varios métodos útiles para trabajar con Streams:

- **map**

Transforma cada valor emitido por el Stream.

```dart
void main() async {
  Stream<int> numeros = Stream.fromIterable([1, 2, 3, 4, 5]);

  Stream<int> cuadrados = numeros.map((numero) => numero * numero);

  await for (var cuadrado in cuadrados) {
    print("Cuadrado: $cuadrado");
  }
}

/*SALIDA:
Cuadrado: 1
Cuadrado: 4
Cuadrado: 9
Cuadrado: 16
Cuadrado: 25
*/
```

- **where**
Filtra los valores emitidos por el Stream.
```dart
void main() async {
  Stream<int> numeros = Stream.fromIterable([1, 2, 3, 4, 5]);

  Stream<int> pares = numeros.where((numero) => numero % 2 == 0);

  await for (var par in pares) {
    print("Número par: $par");
  }
}
/*SALIDA:
Número par: 2
Número par: 4
*/
``` 

- asyncExpand y asyncMap
Permiten transformar cada valor en un Stream o Future.
```dart
void main() async {
  Stream<int> numeros = Stream.fromIterable([1, 2, 3]);

  Stream<int> duplicados = numeros.asyncMap((numero) async {
    await Future.delayed(Duration(seconds: 1));
    return numero * 2;
  });

  await for (var duplicado in duplicados) {
    print("Duplicado: $duplicado");
  }
}
/*Salida (cada segundo:
Duplicado: 2
Duplicado: 4
Duplicado: 6
*/
``` 

## 4. Manejo de Errores
Los Streams pueden emitir errores, que puedes manejar usando el método onError en listen.

```dart
void main() {
  Stream<int> numeros = Stream<int>.fromFuture(
    Future.error("¡Algo salió mal!"),
  );

  numeros.listen(
    (numero) => print("Número: $numero"),
    onError: (error) => print("Error: $error"),
  );
}
/*Salida:
Error: ¡Algo salió mal!
*/
``` 

## 5. Uso de Streams en Flutter
En Flutter, los Streams son ampliamente utilizados para manejar eventos en tiempo real, como cambios de estado o interacciones del usuario. Por ejemplo, puedes usar StreamBuilder para construir la UI basada en los datos emitidos por un Stream.

Ejemplo: Contador con Streams
```dart
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamCounter(),
    );
  }
}

class StreamCounter extends StatefulWidget {
  @override
  _StreamCounterState createState() => _StreamCounterState();
}

class _StreamCounterState extends State<StreamCounter> {
  final StreamController<int> _controller = StreamController<int>();
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    _controller.sink.add(_counter);
  }

  @override
  void dispose() {
    _controller.close(); // Cierra el Stream al eliminar el widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stream Example")),
      body: Center(
        child: StreamBuilder<int>(
          stream: _controller.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                "Contador: ${snapshot.data}",
                style: TextStyle(fontSize: 24),
              );
            } else {
              return Text("Esperando datos...");
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
```


## 6. Buenas Prácticas
- Cierra los Streams : Siempre cierra los Streams (StreamController.close) cuando ya no sean necesarios para evitar fugas de memoria.
- Usa Broadcast Streams si es necesario : Si varios widgets necesitan acceder al mismo Stream, usa un StreamController.broadcast.
- Maneja errores adecuadamente : Usa onError o bloques try-catch para manejar errores en los Streams.
- Evita anidar Streams innecesariamente : Mantén los Streams simples y enfocados en una tarea específica.