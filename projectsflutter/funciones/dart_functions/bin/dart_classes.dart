class Animal {
  String _nombre = "Sin nombre";
  int _edad = 0;

  //Constructor
/* Animal() {
  print("se llamo el constructor");
} */
  //Constructor con parametros
  Animal({String nombre = "Amonimo", int edad = 0}) {
    print("se llamo el constructor");
    this._nombre = nombre;
    this._edad = edad;
  }

  void comer() {
    print("Comiendo");
  }

  void cambiarEstado(String nombre, int edad) {
    this._nombre = nombre;
    this._edad = edad;
  }

  void imprimir() {
    print("Animal $_nombre, Edad $_edad");
  }

  // Getters
  String get nombre => _nombre;
  int get edad => _edad;

  // Setters
  set nombre(String nombre) {
    _nombre = nombre;
  }

  set edad(int edad) {
    _edad = edad;
  }
}

void main() {
  var a = Animal();
  var a2 = Animal();
  var a3 = Animal(nombre: "Pantera", edad: 3);
  print(a.nombre); // Usando getter
  print(a.edad); // Usando getter

  a.nombre = "Mario"; // Usando setter
  a.edad = 20; // Usando setter

  print("Animal ${a.nombre}, Edad ${a.edad}"); // Usando getters
  a.comer();

  print(a is Animal);
  a.cambiarEstado("Tigre", 1);

  a.imprimir();
}
