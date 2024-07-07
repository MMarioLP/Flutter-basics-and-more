//Crear un mixins

mixin Volador {
  void volar() {
    print("Estoy Volando");
  }
}
mixin Corriendo {
  void correr() {
    print("Estoy Corriendo");
  }
}

mixin Nadador {
  void nadar() {
    print("Estoy Nadando");
  }
}

class Pato with Volador, Corriendo, Nadador {}

void main() {
  Pato pato = Pato();
  pato.volar();
  pato.correr();
  pato.nadar();
}
