import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/pantallas/add_Cliente.dart';
import 'package:flutter_firebaseapp/pantallas/add_Vehiculo.dart';
import 'package:flutter_firebaseapp/pantallas/firebaseapp.dart';

import 'package:flutter_firebaseapp/pantallas/update_Cliente.dart';
import 'package:flutter_firebaseapp/pantallas/update_Vehiculo.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FireBaseMain());
}

class FireBaseMain extends StatelessWidget {
  const FireBaseMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD de Firebase',
      initialRoute: '/',
      routes: {
        '/': (context) => const FireBaseAPP(),
        '/addClientes': (context) => const AddCliente(),
        '/editClientes': (context) => const UpdateCliente(),
        '/addVehiculos': (context) => const AddVehiculo(),
        '/editClientes': (context) => const UpdateVehiculo(),
      },
    );
  }
}
