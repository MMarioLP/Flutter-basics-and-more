import 'package:dart_functions/dart_functions.dart' as dart_functions;
import 'dart:io';

int suma(int a, int b) {
  return a + b;
}

void saludar(String nombre) {
  print("Hola $nombre");
}

//Declaramos una funcion con parametros opcionales
void imprimirTicket(String producto, [int cantidad = 1, int monto = 10]) {
  print("$producto, $cantidad, $monto");
}

void imprimirCorreo(String correo, {String remitente = "Anonimo"}) {
  print("$correo, $remitente");
}

var miResta = (int a, int b) => a - b;

void main(List<String> arguments) {
  
  int n1, n2;
  print("Teclea un numero");
  n1 = int.parse(stdin.readLineSync()!);
  print("Teclea un numero");
  n2 = int.parse(stdin.readLineSync()!);

  print("Teclea un numero");
  print("la suma es ${suma(n1, n2)}");

  saludar("Juan");
  

  imprimirTicket("jabon zote");
  imprimirTicket("Chocolate Abuelita", 10, 8);
  imprimirCorreo("estadia@utng.edu.mx");
  imprimirCorreo("estadia@utng.edu.mx", remitente: "UTNG");

  var miFuncion = (int a, int b) => a + b;
  print(miFuncion(2, 4));
  print(miResta(53, 33));

  var numeros = [1, 2, 3, 4, 5];

  numeros.forEach((numero) {
    print("Numero $numero");
  });
}
