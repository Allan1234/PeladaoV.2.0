import 'package:flutter/material.dart';
import 'footer_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peladão - Home'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text('Bem-vindo ao Peladão!'),
            ),
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
