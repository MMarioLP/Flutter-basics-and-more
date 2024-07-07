int suma(numero, numero2) {
  print("Estamo en la funcion suma");
  return numero + numero2;
}

double promedio(double c1, double c2, double c3) {
  print("Estamos en la funcion promedio");
  return (c1 + c2 + c3) / 3;
}

void main() {
  int numero = 1000;
  int numero2 = 3000;
  int resultado = suma(numero, numero2);
  print('La suma de $numero mas $numero2 es $resultado');

  double calificacion = 10.0;
  double calificacion2 = 9.5;
  double calificacion3 = 7.6;
  print(promedio(calificacion, calificacion2, calificacion3));
  String miCrush = 'Paty Chapoy';
  print('mi crush es $miCrush');
  bool isValid = false;
  print('Me quiere $miCrush ${isValid ? "Si" : "No"}');
}
