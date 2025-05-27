import 'package:flutter/material.dart';

class ScoutPage extends StatefulWidget {
  @override
  _ScoutPageState createState() => _ScoutPageState();
}

class _ScoutPageState extends State<ScoutPage> {
  // TODO: Implementar lógica de Scout
  // - Carregar itens de scout (Admin pode alterar nome)
  // - Classificação (importante, intermediário, menos importante)
  // - Pontuação fixa
  // - Selecionar jogador/rodada
  // - Salvar scout
  // - Geração de PDF automática (requer biblioteca)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scout da Rodada')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text('Página de Scout - Em Construção'),
          // TODO: Construir interface para lançamento de scout
        ),
      ),
      // TODO: Adicionar botão para gerar PDF (se manual)
    );
  }
}

