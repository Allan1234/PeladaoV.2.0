import 'package:flutter/material.dart';
import 'footer_widget.dart';

class TeamSelectionPage extends StatelessWidget {
  final List<String> availablePlayers = [
    'Jogador 1', 'Jogador 2', 'Jogador 3'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecionar Time'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: availablePlayers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(availablePlayers[index]),
                  trailing: ElevatedButton(
                    onPressed: () {
                      print('Selecionado: ${availablePlayers[index]}');
                    },
                    child: Text('Selecionar'),
                  ),
                );
              },
            ),
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
