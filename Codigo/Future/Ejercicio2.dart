/*
#### Ejercicio: Simulación de una Operación Asíncrona con Condición
- Instrucciones:
  - Crea una función llamada verificarAcceso que devuelva un Future<bool>. Esta función debe simular una tarea lenta (como verificar credenciales en una base de datos) utilizando Future.delayed durante 2 segundos.
  - Si el usuario tiene acceso, la función debe devolver true.
  - Si el usuario no tiene acceso, la función debe devolver false.
  - En el main, utiliza async/await para llamar a la función verificarAcceso y mostrar un mensaje en la consola dependiendo del resultado:
  - Si el resultado es true, muestra: "Acceso concedido."
  - Si el resultado es false, muestra: "Acceso denegado."
  - Asegúrate de manejar cualquier posible error utilizando un bloque try-catch.

*/

import 'dart:async';

Future<bool> verificarAcceso() {
  return Future.delayed(Duration(seconds: 2), () {
    // Simula una condición: true = acceso concedido, false = acceso denegado
    return true; // Cambia esto para probar diferentes resultados (true o false)
  });
}

void main() async {
  print("Verificando acceso...");
  try {
    bool tieneAcceso = await verificarAcceso();
    if (tieneAcceso) {
      print("Acceso concedido.");
    } else {
      print("Acceso denegado.");
    }
  } catch (error) {
    print("Ocurrió un error: $error");
  }
}
