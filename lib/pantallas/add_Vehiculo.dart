import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/services/firebase.dart';

class AddVehiculo extends StatefulWidget {
  const AddVehiculo({super.key});

  @override
  State<AddVehiculo> createState() => _AddVehiculoState();
}

class _AddVehiculoState extends State<AddVehiculo> {
  TextEditingController usuariosController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar Vehiculo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Pagina para Agregar vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: usuariosController,
              decoration: const InputDecoration(
                  hintText: 'Ingrese la Marca del vehiculo'),
            ),
            TextField(
              controller: usuariosController,
              decoration: const InputDecoration(
                  hintText: 'Ingrese el Modelo del vehiculo'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await agregarCliente(usuariosController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
