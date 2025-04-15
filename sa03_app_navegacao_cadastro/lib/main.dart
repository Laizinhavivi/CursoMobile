import 'package:flutter/material.dart';
import 'package:sa03_app_navegacao_cadastro/view/Tela_Inicial.dart';

import 'view/Tela_cadastro.dart';
import 'view/Tela_confimacao.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => TelaInicial(),
      "/cadastro": (context) => TelaCadastro(),
      "/confirmacao": (context) =>
      TelaConfirmacao()
    },
    initialRoute: "/",
  ));
}
