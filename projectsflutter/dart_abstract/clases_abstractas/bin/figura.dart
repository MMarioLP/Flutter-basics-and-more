// Crear una clase abstracta llamada figura
abstract class Figura {
  //crear un metodo abstracto
  double calcularArea();
}

//Clase Rectangulo que hereda figura
class Rectangulo extends Figura {
  double base;
  double altura;

  Rectangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}

//Clase Circulo que hereda figura
class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return 3.14 * radio * radio;
  }
}
