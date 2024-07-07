void main() {
//Future que lanza una exepción

  Future(
    () {
      throw Exception("Algo salio mal!");
    },
  ).then((_) {
    print("Operación exitoras");
  }).catchError((e) {
    print("Error: $e");
  });
}
