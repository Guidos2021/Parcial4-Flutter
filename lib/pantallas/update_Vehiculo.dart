import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/services/firebase.dart';

class UpdateVehiculo extends StatefulWidget {
  const UpdateVehiculo({super.key});

  @override
  State<UpdateVehiculo> createState() => _UpdateVehiculoState();
}

class _UpdateVehiculoState extends State<UpdateVehiculo> {
  TextEditingController usuariosController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update

    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Vehiculo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Center(
              child: const Text(
                'Pagina para modificar Vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: usuariosController,
              decoration:
                  const InputDecoration(hintText: 'Ingrese la modificacion'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await agregarCliente(usuariosController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child: const Text("Actualizar"))
          ],
        ),
      ),
    );
  }
}
