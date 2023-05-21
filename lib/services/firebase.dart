import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getUsuarios() async {
  List usuarios = [];
  CollectionReference collectionReferenceUsuarios =
      baseD.collection('usuarios');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  queryUsuarios.docs.forEach((documento) {
    usuarios.add(documento.data());
  });

  return usuarios;
}

//guardar usuario
Future<void> agregarCliente(String usuario) async {
  await baseD.collection('clientes').add({"Nombres": usuario});
  await baseD.collection('clientes').add({"Apellidos": usuario});
  await baseD.collection('clientes').add({"Direccion": usuario});
  await baseD.collection('clientes').add({"Ciudad": usuario});
}

Future<void> ActualizarCliente(String usuario) async {
  await baseD.collection('clientes').add({"Nombres": usuario});
  await baseD.collection('clientes').add({"Apellidos": usuario});
  await baseD.collection('clientes').add({"Direccion": usuario});
  await baseD.collection('clientes').add({"Ciudad": usuario});
}

Future<void> agregarVehiculo(String usuario) async {
  await baseD.collection('vehiculo').add({"Marca": usuario});
  await baseD.collection('vehiculo').add({"Modelo": usuario});
}

Future<void> ActuzalizarVehiculo(String usuario) async {
  await baseD.collection('vehiculo').add({"Marca": usuario});
  await baseD.collection('vehiculo').add({"Modelo": usuario});
}









/**
 * usuario:[{
 * nombre:"Tomas"
 * },
 * {
 * nombre:"Luis"
 * },
 * {
 * nombre:"Maria"
 * }
 * ]
 * 
 */