import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main(){
  runApp(MaterialApp(home: TarefaPage(),));
}

class TarefaPage extends StatefulWidget{
  const TarefaPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TarefasPageState();
  }
}

class _TarefasPageState extends State<TarefaPage>{
  List tarefas = [];
  final TextEditingController _tarefaController = TextEditingController();
  static const String baseUrl = "http://10.109.197.10:3000/tarefas";
  
  @override
  void initState(){
    super.initState();
    _carregarTarefas();
  }
  
  //método carregar tarefas da api
  void _carregarTarefas() async{
    try {
      final response = await http.get(Uri.parse(baseUrl));
      // 200 é o código que a conexão foi estabelecida com sucesso
      if(response.statusCode == 200){
        setState(() {
        tarefas = json.decode(response.body);
             });
      }
    } catch (e) {
       print("Erro ao buscar Tarefa: $e");
    }
  }
  //método para adicionar tarefas 
  void _adicionarTarefa(String titulo) async{
    final novaTarefa = {"titulo":titulo, "concluida":false};
    try{
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {"content-Type":"application/json"},
        body: json.encode(novaTarefa)
      );
      if(response.statusCode == 201){
        _tarefaController.clear();
        _carregarTarefas();
             }
    } catch (e){
       print("Erro ao Adiocionar tarefa: $e");
    }
  }
  //continuar na próxima aula - Cenas dos Próximos capítulos.
  //remover tarefas 

  //Modicar tarefas 
}