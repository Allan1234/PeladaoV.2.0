import 'package:flutter/material.dart';

class EndChampionshipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apito Final!'),
      ),
      body: Center(
        child: Text(
          'Parabéns a todos! Campeonato encerrado!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
