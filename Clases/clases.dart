// * En el readme tenemos bastantes ejemplos de clases aquí voy a resolver los dos ejercicios propuestos en el readme.

/*
! Ejercicio 1:
?
*/

class rectangulo {
  int base;
  int altura;

  rectangulo(this.base, this.altura);

  int area(int base, int altura) {
    return base * altura;
  }
}

/*
! Ejercicio 2
?
*/

class estudiante {
  String nombre;
  int edad;
  List<String> cursos;

  estudiante(this.nombre, this.edad, this.cursos);

  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Cursos: ${cursos.join(', ')}');
  }
}

void main() {
  // * PROGRAMA PRINCIPAL

  // Llamada al ejercicio 1
  rectangulo r = rectangulo(5, 10);
  print('Área del rectángulo: ${r.area(r.base, r.altura)}');

  rectangulo r2 = rectangulo(3, 4);
  print('Área del rectángulo: ${r2.area(r2.base, r2.altura)}');

  // Llamada al ejercicio 2
  estudiante e = estudiante('Juan', 20, ['Matemáticas', 'Física', 'Química']);
  e.mostrarInformacion();
  estudiante e2 = estudiante('María', 22, ['Programación', 'Base de Datos']);
  e2.mostrarInformacion();
}
