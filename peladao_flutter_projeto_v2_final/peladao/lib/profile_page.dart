import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username = 'Mister Peladão';
  final int totalPoints = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Usuário: $username', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Total de Pontos: $totalPoints', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
