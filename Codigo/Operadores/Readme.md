# Operadores en Dart.

Dart proporciona una amplia variedad de operadores para realizar operaciones matemáticas, lógicas y de comparación. Este manual te guiará a través de los tipos de operadores más comunes en Dart, si vienes de otro lenguaje de programación te resultará muy fácil, incluso puedes saltar este tema.

## Operadores Aritmeticos
Los operadores aritméticos permiten realizar operaciones matemáticas básicas como suma, resta, multiplicación y división.

- Suma (+)
- Resta (-)
- Multiplicacion (*)
- Division (/)
- Modulo (%)

```dart
/*
Ejemplo:
Operador:  Descripción:      Ejemplo:      Resultado:
+            Suma             5 + 3          8
-            Resta            10 - 2         8
*            Multiplicacion   4 * 2          8
/            Division         10 / 2         5
%            Modulo           10 % 3         1
*/

void main() {
  int a = 10;
  int b = 3;

  print("Suma: ${a + b}");       // Salida: 13
  print("Resta: ${a - b}");      // Salida: 7
  print("Multiplicación: ${a * b}"); // Salida: 30
  print("División: ${a / b}");   // Salida: 3.3333333333333335
  print("Módulo: ${a % b}");     // Salida: 1
  print("División entera: ${a ~/ b}"); // Salida: 3
}
```

## Operadores de Asignación
Estos operadores se utilizan para asignar valores a variables. También existen operadores combinados para simplificar operaciones.

```dart
/*
Operador      Descripción                     Ejemplo        Equivalente
=             Asignación                       x=5              x=5
+=            Suma y asignación                x+=5             x=x+5
-=            Resta y asignación               x-=5             x=x-5
*=            Multiplicación y asignación      x*=5             x=x*5
/=            División y asignación            x/=5             x=x/5
%=            Módulo y asignación              x%=5             x=x%5

*/

void main() {
  int x = 10;

  x += 5; // x = x + 5
  print(x); // Salida: 15

  x *= 2; // x = x * 2
  print(x); // Salida: 30
}
```

### Operadores de Comparación
Estos operadores se utilizan para comparar valores y devolver un valor booleano (true o false).

```dart
/*
Operador          Descripción                  Ejemplo             Resultado
==                Igualdad                     5 == 5              true
!=                Desigualdad                  5 != 5              false
<                 Menor                        5 < 10              true
>                 Mayor                        10 > 5               true
<=                Menor o igual                5 <= 5               true
>=                Mayor o igual                5 >= 5               true
*/

void main() {
  int a = 10;
  int b = 5;

  print(a == b); // Salida: false
  print(a > b);  // Salida: true
  print(a <= b); // Salida: false
}
```

###  Operadores Lógicos
Estos operadores se utilizan para combinar expresiones lógicas y devolver un valor booleano (true o false).
```dart
/*
Operador        Descripción                  Ejemplo             Resultado
&&              Y lógico                     true && false       false
||              O lógico                     true || false       true
!               Negación                     !true               false
*/

void main() {
  bool esMayor = true;
  bool esMenor = false;

  print(esMayor && esMenor); // Salida: false
  print(esMayor || esMenor); // Salida: true
  print(!esMayor);           // Salida: false
}
```

### Operadores de Identidad o de tipo
Estos operadores se utilizan para comparar objetos y devolver un valor booleano (true o false).
```dart
/*
Operador        Descripción                  Ejemplo             Resultado
is              Es instancia de             5 is int            true
is!             No es instancia de           5 is! String       true
as              Castear a                   5 as String         5
as!             Castear a                   5 as! String       5
*/
void main() {
  int numero = 5;
  String texto = "Hola";
  print(numero is int); // Salida: true
  print(texto is! String); // Salida: false
  print(numero as String); // Salida: 5
  print(numero as! int); // Salida: 5
}
``` 

### Operadores condicionales
Estos operadores se utilizan para realizar operaciones condicionales para simplificar la evaluación de condiciones.

```dart
/*
Operador        Descripción                  Ejemplo                Resultado
?              Operador condicional          x == 5 ? "Si" : "No"     "No"
!              Negación                      !x                       true
??             Valor por defecto              null ?? "No"             "No"
*/

void main() {
  int? numero = null;

  // Operador ??
  print(numero ?? 10); // Salida: 10

  // Operador ternario
  bool esPar = true;
  String resultado = esPar ? "Es par" : "Es impar";
  print(resultado); // Salida: Es par
}
```

### Operadores de Incremento y Decremento
Estos operadores se utilizan para incrementar o decrementar el valor de una variable en 1.
```dart
/*
Operador        Descripción                  Ejemplo                Resultado
++              Incremento                   x=4; x++                    5
--              Decremento                   x=6; x--                    5
*/

void main() {
  int x = 5;

  print(x++); // Salida: 5 (post-incremento)
  print(x);   // Salida: 6

  print(++x); // Salida: 7 (pre-incremento)
}
```

>[!NOTE]
>Con los operadores no voy a poner código ya que suelen salir entre funciones y otra parte del manual es más para conocimiento y tener una breve guía sobre ellos.

