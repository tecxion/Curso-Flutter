# Variables.
    
    
    En este apartado veremos las variables en Dart, Si ya habéis visto otro lenguaje de programación esta parte os será mucho mas
    fácil, podremos designar variables con el tipo de dato que queramos, y asignarles un valor, para ello usaremos el siguiente
    código:

    ```
    int numero = 10;
    ```

    En este caso, hemos definido una variable llamada numero, que es de tipo int, y le hemos asignado el valor de 10, pero en Dart
    las variables se pueden usar declarando var, final o const.
    - var: Utilizada cuando el tipo de dato no está definido y se define según el valor asignado.
  
     ```
        var nombre = 'Juan';
        var edad = 20;
    ```

    - final: Utilizada cuando el queremos declarar variables cuyos valores no cambiarán después de su inicialización.
    
    ```
        final String nombre = 'Juan';
        final int edad = 20;
    ```
    
    - const: Usaremos const aunque es parecida a final cuando los valores son constantes en tiempo de compilación, por ejemplo:
    
    ```
        const String nombre = 'Juan';
        const int edad = 20;
    
    ```
    
    <br>
    
    Dart es un lenguaje fuertemente tipado, lo que significa que cada variable tiene un tipo específico. Los tipos más comunes incluyen:

        - int : Números enteros (positivos o negativos).
        - double : Números decimales.
        - String : Texto o cadenas de caracteres.
        - bool : Valores booleanos (true o false).
        - List : Listas o arreglos.
        - Map : Colecciones de pares clave-valor.
    
    ```
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
    

    Podemos ver el ejemplo y descargar el código en [Variables](02_Variables.dart)