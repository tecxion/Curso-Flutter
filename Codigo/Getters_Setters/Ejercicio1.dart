/*
### Ejercicio 1: Clase CuentaBancaria

Instrucciones:
- Crea una clase llamada CuentaBancaria que tenga las siguientes propiedades privadas:
    - _titular: Una cadena que representa el nombre del titular de la cuenta.
    - _saldo: Un número que representa el saldo actual de la cuenta.
- Implementa un constructor que inicialice el _titular y el _saldo.
- Crea un getter para obtener el saldo (saldo) de la cuenta.
- Crea un setter para modificar el saldo (saldo). Asegúrate de que el nuevo saldo no sea negativo. 
Si se intenta asignar un valor negativo, muestra un mensaje de error y no actualices el saldo.
- En el main, crea un objeto de la clase CuentaBancaria y prueba los métodos getter y setter para acceder y modificar el saldo.

*/

void main() {
  var cuenta_1 = CuentaBancaria('Juan Perez', 1000.0);
  print('Titular: ${cuenta_1._titular}');
  print('Saldo inicial: ${cuenta_1.saldo}');

  var cuenta_2 = CuentaBancaria(
    'Pedro Gomez',
    -500.0,
  ); // Como puedes ver, el saldo inicial es negativo, para ello tendríamos que usar un asserts.
  print('Titular: ${cuenta_2._titular}');
  print('Saldo inicial: ${cuenta_2.saldo}');

  cuenta_2.saldo = -400.0; // Intento de asignar un saldo negativo
}

class CuentaBancaria {
  String _titular;
  double _saldo;

  CuentaBancaria(this._titular, this._saldo);

  // TODO: Usando un assert para asegurarnos de que el saldo inicial no sea negativo

  /* 
  CuentaBancaria(String titular, double saldo)
    : _titular = titular,
      _saldo = saldo >= 0 ? saldo : 0 {
    assert(saldo >= 0, 'El saldo inicial no puede ser negativo.');
  }
  */

  // TODO: Si quieres usar un assert, puedes comentar el código de arriba y descomentar el constructor de abajo.

  // Getter para obtener el saldo
  double get saldo => _saldo;

  // Setter para modificar el saldo
  set saldo(double nuevoSaldo) {
    if (nuevoSaldo < 0) {
      print('Error: El saldo no puede ser negativo.');
    } else {
      _saldo = nuevoSaldo;
    }
  }
}
