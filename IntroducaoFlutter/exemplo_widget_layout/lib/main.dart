import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      //routes - rotas de navegação +1 tela
    ),
  );
}

//janela para estudo de layout (Columns,Rows,Stacks,Containers)
class MyApp extends StatelessWidget {
  //sobrescrever o método build
  @override
  Widget build(BuildContext) {
    return Scaffold(
      //suporte da Janela (appbar, body, bottonNB, drawer
      appBar: AppBar(title: Text("Exemplo de Layout")),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
               alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.black,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.red,
                  height: 150,
                  width: 150,
                ),
                Icon(Icons.person, size: 100,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color.fromARGB(255, 175, 76, 175),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color:Colors.yellow,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Text("Observações Importantes")
          ], //Column
        ),
      ),
    );
  }
}
