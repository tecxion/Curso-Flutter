/*
Ejercicio 2: Clase Producto
Instrucciones:
- Crea una clase llamada Producto que tenga las siguientes propiedades privadas:
  - _nombre: Una cadena que representa el nombre del producto.
  - _precio: Un número que representa el precio del producto.
- Implementa un constructor que inicialice el _nombre y el _precio.
- Crea un getter para obtener el precio (precio) del producto.
- Crea un setter para modificar el precio (precio). Asegúrate de que el nuevo precio sea mayor que cero. Si se intenta asignar un precio menor o igual a cero, muestra un mensaje de error y no actualices el precio.
En el main, crea un objeto de la clase Producto y prueba los métodos getter y setter para acceder y modificar el precio.

*/

void main() {
  var producto = Producto(nombre: 'Ordenador', precio: 1500.0);
  print(producto);
  producto.precio = -1000.0;
  // Intento de asignar un precio negativo
  print('producto con precio negativo en el constructor:');
  var producto2 = Producto(nombre: 'Tablet', precio: -500.0);
  print(producto2);
  producto2.precio = 300.0;
  print(producto2);
}

class Producto {
  String _nombre;
  double _precio;

  Producto({required String nombre, required double precio})
    : _nombre = nombre,
      _precio = (precio > 0 ? precio : 1.0) {
    // Aseguramos que el precio inicial sea mayor que cero en vez de usar un assert
    // Si el precio es menor o igual a cero, se establece a 1.0
    if (precio <= 0) {
      print(
        'Error: El precio debe ser mayor que cero. Se establece a 1.0 por defecto.',
      );
    }
  }

  // Getter para obtener el precio
  double get precio => _precio;

  // Setter para modificar el precio
  set precio(double nuevoPrecio) {
    if (nuevoPrecio <= 0) {
      print('Error: El precio debe ser mayor que cero.');
    } else {
      _precio = nuevoPrecio;
    }
  }

  @override
  String toString() {
    return 'Producto: $_nombre, Precio: \$$_precio';
  }
}
