import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_firebase/firebase_options.dart';

void main() async{
  
  //conectar com o Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform //conecta com a plataforma android do firebase
  );
  runApp(MaterialApp());
}