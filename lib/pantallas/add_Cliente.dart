import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/services/firebase.dart';

class AddCliente extends StatefulWidget {
  const AddCliente({super.key});

  @override
  State<AddCliente> createState() => _AddClienteState();
}

class _AddClienteState extends State<AddCliente> {
  TextEditingController usuariosController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar Cliente"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Pagina para Agregar Cliente',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: usuariosController,
              decoration: const InputDecoration(
                  hintText: 'Ingrese los nombre del Cliente'),
            ),
            TextField(
              controller: usuariosController,
              decoration: const InputDecoration(
                  hintText: 'Ingrese los apellido del Cliente'),
            ),
            TextField(
              controller: usuariosController,
              decoration: const InputDecoration(
                  hintText: 'Ingrese la direccion del Cliente'),
            ),
            TextField(
              controller: usuariosController,
              decoration: const InputDecoration(
                  hintText: 'Ingrese la ciudad del Cliente'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await ActualizarCliente(usuariosController.text).then((_) {
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
