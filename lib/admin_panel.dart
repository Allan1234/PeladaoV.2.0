import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel do Administrador'),
      ),
      body: Center(
        child: Text('Gerencie o Peladão aqui!'),
      ),
    );
  }
}
