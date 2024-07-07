void main() {
  try {
    int resultado = 10 ~/ 0;
    print("La division es: $resultado");
  } catch (e) {
    print("Se produjo una excepción: $e");
  } finally {
    print("finally");
  }

  try {
    int resultado = 10 ~/ 3;
    print("La division es: $resultado");
  } on Exception {
    print("Se produjo una exepcion entre la division entre 0 y 10");
  } finally {
    print("NO olvides limpiar tus objetos y por favor no dividas entre ceros");
  }

  try {
    List<int> lista = [1, 2, 3];
    print(lista[4]);
  } on RangeError {
    print("Indice fuera de rango");
  } catch (e) {
    print("Hubo una excepción $e");
  } finally {
    print("Operacion completada");
  }
}
