# Comencemos a aprender Flutter y Dart.

## Una vez que tenemos instalado Flutter y Dart, podemos comenzar a desarrollar aplicaciones para Android y iOS.

Si queremos hacer aplicaciones de consola básicas podemos hacerlo desde [DartPad](https://dartpad.dev/).

### 1. Creación de un proyecto
https://flutter.dev/docs/get-started/test-drive

- En el enlace anterior podemos ver como crear un proyecto de Flutter en Visual Studio Code desde la página oficial de Flutter.
- También podemos crear un proyecto desde la terminal de Visual Studio Code.
- Para crear un proyecto desde la terminal de Visual Studio Code, ejecutamos el siguiente comando:
  flutter create <nombre_de_la_app>
- Para crear un proyecto desde la terminal de Android Studio, ejecutamos el siguiente comando:
  flutter create <nombre_de_la_app>

### 2. Hello world.
Para comenzar con Flutter y dart empezaremos creando el programa básico de hello world.<br>
En todo programa tendremos siempre un main() y un main.dart, que será donde se ejecutará el programa.<br>
En el archivo main.dart, tendremos la siguiente estructura:
```
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
  }
```
Pero para el primer ejemplo de Hello World, solo nos hará falta el método main(), que será el siguiente:
    
```
void main() {
  print('Hello World');
  }
```

Podeis descargar el [Hello world](Codigo/01_Hello_world.dart) y ejecutarlo con F5 y observar la Consola de depuración.