import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o Peladão'),
      ),
      body: Center(
        child: Text(
          'Peladão v1.0\nDesenvolvido por Allan Gonçalves\nData: 24/05/2025',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
