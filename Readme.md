# Aprende Flutter desde cero, paso a paso :point_down:

## Primero os voy a dejar todos los enlaces de interés para que os sirvan como guía para el proceso de instalación de Flutter y Dart en Windows, MacOS y Linux.


## Índice del curso. :computer:


### 1. Instalación de Flutter
https://flutter.dev/docs/get-started/install/windows
https://flutter.dev/docs/get-started/install/macos
https://flutter.dev/docs/get-started/install/linux

### 2. Instalación de Dart
https://dart.dev/get-dart

### 3. Instalación de Visual Studio Code
https://code.visualstudio.com/downloads
https://marketplace.visualstudio.com/items?itemName=dart-code.dart-code

### 4. Instalación de Flutter Tools para Visual Studio Code
https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter

### 5. Instalación de Android Studio
https://developer.android.com/studio/index.html
https://marketplace.visualstudio.com/items?itemName=Android.VSAdk

### 6. Instalación de Flutter Tools para Android Studio
https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter

---

## Codigo del curso.:point_down:

### 7. Hello World - Mi primer programa
[Hello world](Codigo/Readme.md#hello-world)

### 8. Variables
[Variables](Codigo/Variables/Readme.md)

### 9. Operadores
[Operadores](Codigo/Operadores/Readme.md)

### 10. Maps
[Maps](Codigo/Maps/Readme.md)

### 11. Listas
[Listas](Codigo/list_iterables_sets/Readme.md)

### 12. Funciones
[Funciones](Codigo/Funciones/Readme.md)

### 13. Clases
[Clases](Codigo/Clases/Readme.md)

>[NOTE]
>A partir de este punto dejo el código en los readme.md de cada sección para que podáis seguir el curso de manera más facil y los ejercicios resueltos en los .dart dentro de la carpeta de cada sección ya que me dí cuenta que es más fácil de entender el código y no tener que ir a los .dart.

### 13. Getters y Setters
[Getters y Setters](Codigo/Getters_Setters/Readme.md)

### 14. Future
[Future](Codigo/Future/Readme.md)

### 15. Streams
[Streams](Codigo/Streams/Readme.md)

---

## Pasamos a aplicaciones con Flutter

lutter es un framework de desarrollo de interfaces de usuario (UI) creado por Google. Permite crear aplicaciones nativas para iOS, Android, Web, Windows, macOS y Linux desde una única base de código. Flutter utiliza el lenguaje de programación Dart , que es fácil de aprender y tiene características modernas como tipado estático, funciones asíncronas y una sintaxis clara.


### A continuación explico los conceptos básicos de Flutter.

#### 1. Widgets
Los widgets son los componentes básicos de Flutter. Piensa en ellos como piezas de Lego que se combinan para construir la interfaz de usuario. Cada widget puede tener hijos (child) o múltiples hijos (children).

- Tipos de Widgets:
    - StatelessWidget : Un widget que no cambia su estado después de ser construido
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('¡Hola, Flutter!'),
    );
  }
}
```
  - StatefulWidget : Un widget que puede cambiar su estado durante su ciclo de vida
```dart
class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Contador: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Incrementar'),
        ),
      ],
    );
  }
}
```

#### 2. BuildContext
El BuildContext es un objeto que representa la ubicación de un widget en el árbol de widgets. Es esencial para navegar entre pantallas, acceder al tema de la aplicación y manejar el estado.

#### 3. Gestión de Estado
El estado es la información que puede cambiar durante la ejecución de la aplicación. Flutter ofrece varias formas de manejar el estado:

Provider : Recomendado para principiantes, es fácil de usar y robusto.
Riverpod : Similar a Provider, pero más flexible y testeable.
GetX : Un gestor de estado potente que también incluye navegación y temas.
BLoC/Cubit : Ideal para aplicaciones complejas, aunque requiere más código.
Ejemplo básico con Provider:

```dart
class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

// En el widget principal:
ChangeNotifierProvider(
  create: (_) => Counter(),
  child: MaterialApp(
    home: CounterPage(),
  ),
);
```

#### 4. Navegación
Flutter ofrece varias formas de navegar entre pantallas: 
- La navegación entre pantallas se realiza utilizando el Navigator. Aquí tienes un ejemplo básico:
```dart
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen()),
  );
}
```

🛠️ Widgets Comunes en Flutter
Aquí tienes una lista de algunos widgets esenciales que deberías conocer:

#### 1. AppBar
- Una barra superior que muestra el título y acciones.

```dart
AppBar(
  title: Text('Mi Aplicación'),
  actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
)
```

#### 2. Text
- Un widget de texto que muestra texto en pantalla.
```dart
Text(
  '¡Hola, Flutter!',
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
)
```
#### 3. Container
- Un widget versátil que permite agregar padding, margen y decoración.
```dart
Container(
  padding: EdgeInsets.all(16.0),
  color: Colors.blue,
  child: Text('Contenedor'),
)
```
#### 4. Column y Row
- Organizan widgets en columnas y filas
```dart
Column(
  children: [
    Text('Texto 1'),
    Text('Texto 2'),
  ],
),
```

#### 5. ListView
- Muestra una lista desplazable de widgets.

```dart
ListView(
  children: [
    ListTile(title: Text('Elemento 1')),
    ListTile(title: Text('Elemento 2')),
  ],
)
```

#### 6. ElevatedButton
- Un botón que se puede presionar para realizar una acción.
```dart
ElevatedButton(
  onPressed: () {
    // Acción del botón
  },
  child: Text('Botón'),
)
```

#### 7. TextField
- Un widget para ingresar texto.
```dart
TextField(
  decoration: InputDecoration(
    hintText: 'Ingresa tu nombre',
  ),
)
```

#### 8. IconButton
- Un widget que representa un icono y un botón.
```dart
IconButton(
  icon: Icon(Icons.search),
  onPressed: () {
    // Acción del botón
  },
)
```

#### 9. Checkbox
- Un widget para seleccionar una opción.
```dart
Checkbox(
  value: isChecked,
  onChanged: (value) {
    setState(() {
      isChecked = value;
    });
  },
)
```

#### 10. RadioListTile
- Un widget para seleccionar una opción de una lista de opciones.
```dart
RadioListTile(
  value: 1,
  groupValue: selectedOption,
  onChanged: (value) {
    setState(() {
      selectedOption = value;
    });
  },
  title: Text('Opción 1'),
)
```

#### 11. ListView
- Un widget para mostrar una lista de elementos.
```dart
ListView(
  children: [
    ListTile(
      title: Text('Elemento 1'),
    ),
    ListTile(
      title: Text('Elemento 2'),
    ),
  ],
)
```

>[!NOTE]
>En el siguiente enlace os dejo la página con el catalogo de widgets de Flutter. :point_down:


[https://docs.flutter.dev/ui/widgets](Catálogo de Widgets)



### 🎨 Temas y Estilos
Flutter permite aplicar temas globales a tu aplicación usando el widget Theme. Aquí tienes un ejemplo:
```dart
MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blue,
    fontFamily: 'Roboto',
  ),
  home: MyHomePage(),
);
```


---

>[!NOTE]
>Dejo dos archivos que son sacados de Fernando Herrera como guía básica de atajos para dart y flutter

[Guia atajos dart](Media/dart_guia_atajos.pdf)<br>
[Guia atajos flutter](Media/flutter_guia_atajos.pdf)<br>

#### Gran parte de la información obtenida ha sido gracias a Fernando Herrera de su canal de Youtube el cual podéis verlo para mejorar en el desarrollo de las aplicaciones con Flutter y Dart.

:video_camera:[Canal de Fernando Herrera](https://www.youtube.com/@fernando_her85)

---
## Gracias por ver el curso y si te ha gustado y quieres más repositorios así puedes invitarme a un café.

[![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/jfmpkiko) 
[![Butmeacoffee](https://github.com/tecxion/TecXion/blob/main/Media/cafe1.png)](https://coff.ee/tecxart)