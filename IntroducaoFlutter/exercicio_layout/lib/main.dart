import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 10),
          Icon(Icons.notifications),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Imagem de perfil
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('https://acadtec.com.br/storage/posts/pictures/ntVKoNURQUQhP9ghaf06607dcbf590338.jpg',), // Substitua pelo caminho correto da imagem
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(Icons.edit, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Nome e descrição
            Text(
              'João Silva',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Desenvolvedor Flutter | Apaixonado por tecnologia e inovação.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            // Linha com ícones de redes sociais
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook, color: Colors.blue),
                  onPressed: () {},
                ),
                  
                IconButton(
                  icon: Icon(Icons.tiktok, color: Colors.blueAccent),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            // Três Containers em uma linha com informações pessoais
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.email, color: Colors.blue),
                      SizedBox(height: 8),
                      Text('Email', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.phone, color: Colors.green),
                      SizedBox(height: 8),
                      Text('Telefone', style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.location_on, color: Colors.orange),
                      SizedBox(height: 8),
                      Text('Localização', style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Lista de informações pessoais
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.cake),
                    title: Text('Data de nascimento: 15/05/1990'),
                  ),
                  ListTile(
                    leading: Icon(Icons.school),
                    title: Text('Formação: Ciências da Computação'),
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Línguas: Português, Inglês'),
                  ),
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Profissão: Desenvolvedor Flutter'),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Hobbies: Programar, Viajar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
