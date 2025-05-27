import 'package:flutter/material.dart';
import 'footer_widget.dart';

class RankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking Peladão'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text('Ranking atualizado em breve!'),
            ),
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
