import 'package:exemplo_shared_preferences/tela_inicial.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Shared Preferences Exemplo",
    home: TelaInicial()
    theme: ThemeData(brightness: Brightness.light),
    darkTheme: ThemeData(brightness: Brightness.dark),
  ));
}