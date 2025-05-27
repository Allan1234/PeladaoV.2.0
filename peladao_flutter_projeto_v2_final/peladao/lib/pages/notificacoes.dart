import 'package:flutter/material.dart';

class NotificacoesPage extends StatefulWidget {
  @override
  _NotificacoesPageState createState() => _NotificacoesPageState();
}

class _NotificacoesPageState extends State<NotificacoesPage> {
  // TODO: Implementar lógica de Notificações
  // - Carregar notificações do NotificacaoService
  // - Exibir notificações (humoradas e automáticas)
  // - Marcar como lidas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notificações Peladão')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text('Página de Notificações - Em Construção'),
          // TODO: Construir interface para exibir a lista de notificações
          // Exemplo: ListView.builder com ListTile para cada notificação
        ),
      ),
    );
  }
}

