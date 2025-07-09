import 'dart:io';

void main() {
  // * Funciones de ejemplo.
  // ! Función principal
  String nombre = 'Jose';

  print(saludar());

  print(saludarConNombre(nombre));

  print(sumarDosNumeros(5, 10));

  print(sumar(3, 7));

  //
  // EJERCICIO 1: Área de rectángulo
  //

  int base = 5;
  int altura = 10;
  int area = calcularAreaRectangulo(base, altura);
  print('El área del rectángulo de base $base y altura $altura es: $area');

  //
  // EJERCICIO 2: Mayor de dos números
  //
  int num1 = 15;
  int num2 = 20;
  int mayor = mayorDeDosNumeros(num1, num2);
  print('El mayor de $num1 y $num2 es: $mayor');
} // * Función main

// * Funciones de ejemplo que se utilizan en el main
// * Puedes crear tus propias funciones y llamarlas desde el main o desde otras funciones.
// * Las funciones son bloques de código reutilizables que realizan una tarea específica.

String saludar() {
  return 'Hola a todos';
}

String saludarConNombre(String nombre) {
  return 'Hola $nombre';
}

int sumarDosNumeros(int a, int b) {
  return a + b;
}

int sumar(int a, int b) => a + b;

/* 
 ? ------------------------------------
 ? EJERCICIOS RESUELTOS
 ? ------------------------------------
 */

// ! Ejercicio 1:
// !

int calcularAreaRectangulo(int base, int altura) {
  return base * altura;
}

// ! Ejercicio 2:
// ! Crea una función que reciba dos números y retorne el mayor de ellos.
int mayorDeDosNumeros(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}
