import 'package:flutter/material.dart';

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  // TODO: Implementar lógica de Ranking
  // - Carregar dados de jogadores/times e suas pontuações/valorização
  // - Ordenar e exibir o ranking geral
  // - Exibir histórico de insígnias e valor em "Perebas"
  // - Manter histórico entre temporadas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ranking Peladão')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text('Página de Ranking - Em Construção'),
          // TODO: Construir interface para exibir o ranking e histórico
        ),
      ),
    );
  }
}

