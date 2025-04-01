import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

//construir a janela
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Widget de Exibição"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Olá, Flutter!!!", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 151, 81, 104)) ),//texto simples
            Text("Flutter é icrível!!!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 131, 160, 204),
              letterSpacing: 2
            ),), //texto personalizado
            Icon(Icons.star, size:50, color: const Color.fromARGB(255, 83, 136, 197)),
            IconButton(onPressed: ()=> print("Icone Pressionado"), 
            icon: Icon(Icons.notifications, size:50)),
          //Imagens
          Image.network("https://d1muf25xaso8hp.cloudfront.net/https://img.criativodahora.com.br/2024/02/criativo-65d81c9c1b364MjMvMDIvMjAyNCAwMWgxOA==.jpg?w=1000&h=&auto=compress&dpr=1&fit=max",
          height: 300,
          width: 300,
          fit: BoxFit.cover,),
          //imagem local
          Image.asset("assets/img/image.png",
          height: 300,
          width: 300,
          fit: BoxFit.cover,)
          ],
        ),
      )
    );
  }
}
