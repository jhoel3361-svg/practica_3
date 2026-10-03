import 'dart:io';

void ejercicio1() {
  double suma = 0;

  for (int i = 1; i <= 5; i++) {
    print("Ingrese la nota $i:");
    double nota = double.parse(stdin.readLineSync()!);

    suma = suma + nota;
  }

  double promedio = suma / 5;

  print("Suma total: $suma");
  print("Promedio final: $promedio");

  if (promedio >= 13) {
    print("Aprobado");
  } else {
    print("Desaprobado");
  }

  print("iestph");
}

void ejercicio2() {
  double saldo = 500;
  int opcion = 0;

  while (opcion != 4) {
    print("\n===== CAJERO AUTOMÁTICO =====");
    print("1. Consultar saldo");
    print("2. Retirar dinero");
    print("3. Depositar dinero");
    print("4. Salir");
    print("Seleccione una opción:");

    opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      print("Saldo disponible: S/ $saldo");
    } else if (opcion == 2) {
      print("Ingrese el monto a retirar:");
      double retiro = double.parse(stdin.readLineSync()!);

      if (retiro <= saldo) {
        saldo = saldo - retiro;
        print("Retiro realizado correctamente.");
        print("Saldo actual: S/ $saldo");
      } else {
        print("No puede retirar más dinero del saldo disponible.");
      }
    } else if (opcion == 3) {
      print("Ingrese el monto a depositar:");
      double deposito = double.parse(stdin.readLineSync()!);

      if (deposito > 0) {
        saldo = saldo + deposito;
        print("Depósito realizado correctamente.");
        print("Saldo actual: S/ $saldo");
      } else {
        print("El monto debe ser mayor que cero.");
      }
    } else if (opcion == 4) {
      print("Gracias por utilizar el cajero.");
    } else {
      print("Opción no válida.");
    }
  }

  print("iestph");
}

void ejercicio3() {
  int numeroSecreto = 37;
  int numero;
  int intentos = 0;

  do {
    print("Adivina el número:");
    numero = int.parse(stdin.readLineSync()!);

    intentos++;

    if (numero < numeroSecreto) {
      print("El número secreto es mayor.");
    } else if (numero > numeroSecreto) {
      print("El número secreto es menor.");
    } else {
      print("¡Correcto!");
    }
  } while (numero != numeroSecreto);

  print("Intentos realizados: $intentos");
  print("iestph");
}

void ejercicio4() {
  List<String> productos = [
    "Laptop",
    "Mouse",
    "Teclado",
    "Monitor",
    "Impresora"
  ];

  print("===== LISTA DE PRODUCTOS =====");

  for (int i = 0; i < productos.length; i++) {
    print("${i + 1}. ${productos[i]}");
  }

  print("Ingrese un nuevo producto:");
  String nuevoProducto = stdin.readLineSync()!;

  productos.add(nuevoProducto);

  print("===== LISTA ACTUALIZADA =====");

  for (int i = 0; i < productos.length; i++) {
    print("${i + 1}. ${productos[i]}");
  }

  print("Cantidad de productos: ${productos.length}");
  print("iestph");
}

void main() {
  ejercicio4();
}