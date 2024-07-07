void main() {
  //crear un mapa
  Map<String, int> notas = {'ddi': 10, 'bd': 8, 'iot': 10, 'in': 10};

  //imprimir el mapa
  print(notas);
  print(notas['bd']);
  notas['bd'] = 10;
  print(notas['bd']);
  print(notas);

  notas.remove('iot');
  print(notas);

  for (var nota in notas.keys) {
    print('$nota: ${notas[nota]}');
  }

  notas.forEach((key, value) => print('$key: $value'));
}
