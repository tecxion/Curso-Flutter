/*
#### Ejercicio 1: Simulación de una Tarea Asíncrona
Instrucciones:
- Crea una función llamada obtenerNombre que devuelva un Future<String>. Esta función debe simular una tarea lenta (como una solicitud HTTP o consulta a una base de datos) utilizando Future.delayed durante 3 segundos.
- La función debe devolver el nombre "Juan Pérez" después de completarse.
- En el main, utiliza async/await para llamar a la función obtenerNombre y mostrar el resultado en la consola.
- Asegúrate de manejar cualquier posible error utilizando un bloque try-catch.
        Salida esperada: "Obteniendo nombre...
                          Nombre Obtenido es: Juan Pérez"
*/
import 'dart:async';

Future<String> obtenerNombre() async {
  // Simula una tarea lenta
  await Future.delayed(Duration(seconds: 3));
  return "Juan Pérez";
}

void main() async {
  print("Obteniendo nombre...");

  try {
    String nombre = await obtenerNombre();
    print("Nombre Obtenido es: $nombre");
  } catch (e) {
    print("Error al obtener el nombre: $e");
  }
}
