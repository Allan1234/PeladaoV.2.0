import 'package:flutter/material.dart';

class LeagueCreationPage extends StatelessWidget {
  final TextEditingController leagueNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Liga'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: leagueNameController,
              decoration: InputDecoration(labelText: 'Nome da Liga'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Liga criada: ${leagueNameController.text}');
              },
              child: Text('Criar Liga'),
            ),
          ],
        ),
      ),
    );
  }
}
