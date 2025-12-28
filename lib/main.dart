import 'package:flutter/material.dart';

void main() => runApp(MyProfileApp());

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Perfil Pessoal',
      home: Scaffold(
        appBar: AppBar(title: Text('Perfil Pessoal')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 24),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_pic.jpg'),
            ),

            SizedBox(height: 12),
            Text(
              'Nome da Pessoa',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 4),
            Text(
              'Desenvolvedor de Software',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                    // TODO: Adicionar lógica para enviar um e-mail
                  },
                ),
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {
                    // TODO: Adicionar lógica para fazer uma ligação
                  },
                ),
                IconButton(
                  icon: Icon(Icons.web),
                  onPressed: () {
                    // TODO: Adicionar lógica para abrir um site
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 8.0, // Espaço horizontal entre os chips
              runSpacing: 4.0, // Espaço vertical entre as linhas de chips
              alignment: WrapAlignment.center,
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('B'),
                  ),
                  label: Text('Bicicleta'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('L'),
                  ),
                  label: Text('Leitura'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text('M'),
                  ),
                  label: Text('Música'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
