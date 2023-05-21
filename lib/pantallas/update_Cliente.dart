import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/services/firebase.dart';

class UpdateCliente extends StatefulWidget {
  const UpdateCliente({super.key});

  @override
  State<UpdateCliente> createState() => _UpdateClienteState();
}

class _UpdateClienteState extends State<UpdateCliente> {
  TextEditingController usuariosController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update

    return Scaffold(
      appBar: AppBar(
        title: const Text("Actualizar Cliente"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Center(
              child: const Text(
                'Pagina Modificar Cliente',
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
                  await ActualizarCliente(usuariosController.text).then((_) {
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
