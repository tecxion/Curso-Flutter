void main() {
  // ! Función principal

  // * Funciones de ejemplo.

  String nombre = 'Jose';

  print(saludar()); // * Llamada a la función saludar

  print(saludarConNombre(nombre)); // * Llamada a la función saludarConNombre

  print(sumarDosNumeros(5, 10)); // * Llamada a la función sumarDosNumeros

  print(sumar(3, 7)); // * Llamada a la función sumar

  int a = 5;
  print('Función con datos requeridos:');
  print(
    funcionConDatosRequeridos(a: a),
  ); // * Llamada a la función funcionConDatosRequeridos con el parámetro requerido 'a'

  //
  // EJERCICIO 1: Área de rectángulo, código al final.
  //

  int base = 5;
  int altura = 10;
  int area = calcularAreaRectangulo(base, altura);
  print('El área del rectángulo de base $base y altura $altura es: $area');

  //
  // EJERCICIO 2: Mayor de dos números, código al final.
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

// ! Funcion con datos requeridos
// ? En este caso, la función requiere que se le pase un valor para 'a' y tiene un valor por defecto para 'b'.
// ? Si no se pasa un valor para 'b', se usará el valor por defecto de 3.
// ? Si se pasa un valor para 'b', se usará ese valor en lugar del valor por defecto.
// ? La palabra clave 'required' indica que el parámetro es obligatorio.

int funcionConDatosRequeridos({required int a, int b = 3}) {
  return a + b;
}

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
