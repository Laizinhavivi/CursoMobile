import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() { //onde roda a minha aplicação
  runApp(MyApp(
    //widget principal (elementos visuais) - raiz do meu aplicativo
  )); //função para rodar
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Perfil Persistente',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  String _corFavorita = 'Azul'; // Cor padrão

  @override
  void initState() {
    super.initState();
    _carregarDados();
  }

  // Carrega os dados salvos usando SharedPreferences
  void _carregarDados() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _nomeController.text = prefs.getString('nome') ?? '';
      _idadeController.text = prefs.getString('idade') ?? '';
      _corFavorita = prefs.getString('corFavorita') ?? 'Azul';
    });
  }

  // Salva os dados no SharedPreferences
  void _salvarDados() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nome', _nomeController.text);
    prefs.setString('idade', _idadeController.text);
    prefs.setString('corFavorita', _corFavorita);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Dados salvos com sucesso!')));
  }

  // Muda a cor de fundo de acordo com a cor favorita
  Color _obterCorDeFundo() {
    switch (_corFavorita) {
      case 'Verde':
        return const Color.fromARGB(255, 196, 211, 196);
      case 'Vermelho':
        return const Color.fromARGB(255, 218, 174, 171);
      case 'Amarelo':
        return const Color.fromARGB(255, 228, 225, 199);
      default:
        return const Color.fromARGB(255, 188, 202, 214);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meu Perfil Persistente')),
      body: Container(
        color: _obterCorDeFundo(),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: _idadeController,
              decoration: InputDecoration(labelText: 'Idade'),
              keyboardType: TextInputType.number,
            ),
            DropdownButton<String>(
              value: _corFavorita,
              onChanged: (String? novaCor) {
                setState(() {
                  _corFavorita = novaCor!;
                });
              },
              items: <String>['Azul', 'Verde', 'Vermelho', 'Amarelo']
                  .map<DropdownMenuItem<String>>((String valor) {
                return DropdownMenuItem<String>(
                  value: valor,
                  child: Text(valor),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _salvarDados,
              child: Text('Salvar Dados'),
            ),
            SizedBox(height: 20),
            Text(
              'Nome: ${_nomeController.text}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Idade: ${_idadeController.text}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Cor favorita: $_corFavorita',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
