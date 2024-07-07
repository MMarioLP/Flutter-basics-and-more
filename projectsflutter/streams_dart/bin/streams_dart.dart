void main() {
  //Creacion de un strem
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (contador) => contador).take(10);

  stream.listen((datos) => print("Datos recibido: $datos"));

  Stream<int> otroStream = Stream.fromIterable([1, 2, 3, 5, 7, 9, 11]);
  otroStream.listen((datos) => print("Datos recibido: $datos"));
}
