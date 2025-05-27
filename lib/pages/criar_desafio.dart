import 'package:flutter/material.dart';
// import 'package:peladao1/models/desafio.dart'; // Ajuste o nome do pacote
// import 'package:peladao1/services/liga_service.dart'; // Exemplo de serviço para salvar

class CriarDesafioPage extends StatefulWidget {
  // final String ligaId; // Passar o ID da liga onde o desafio será criado
  // CriarDesafioPage({required this.ligaId});

  @override
  _CriarDesafioPageState createState() => _CriarDesafioPageState();
}

class _CriarDesafioPageState extends State<CriarDesafioPage> {
  final _tituloController = TextEditingController();
  final _descricaoController = TextEditingController();
  final _pontosController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  // final LigaService _ligaService = LigaService(); // Exemplo

  void _lancarDesafio() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      String titulo = _tituloController.text;
      String descricao = _descricaoController.text;
      int? pontuacao = int.tryParse(_pontosController.text);

      if (pontuacao == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Pontuação inválida.'), backgroundColor: Colors.red),
        );
        setState(() {
          _isLoading = false;
        });
        return;
      }

      print('Lançando desafio: $titulo, Pontos: $pontuacao');
      // TODO: Implementar lógica real para salvar o desafio (ex: _ligaService.criarDesafio(widget.ligaId, titulo, descricao, pontuacao))
      // Exemplo simulado:
      // Desafio novoDesafio = Desafio(
      //   id: DateTime.now().millisecondsSinceEpoch.toString(), // ID simulado
      //   titulo: titulo,
      //   descricao: descricao,
      //   pontuacao: pontuacao,
      // );
      await Future.delayed(Duration(seconds: 1)); // Simular chamada de rede
      bool sucesso = true; // Simular sucesso

      if (sucesso) {
        print('Desafio lançado com sucesso!');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Desafio "$titulo" lançado!'), backgroundColor: Colors.green),
        );
        // TODO: Enviar notificação para jogadores/técnicos da liga
        Navigator.pop(context); // Voltar para a tela anterior
      } else {
        print('Erro ao lançar desafio.');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao lançar desafio. Tente novamente.'), backgroundColor: Colors.red),
        );
      }

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lançar Novo Desafio')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _tituloController,
                  decoration: InputDecoration(labelText: 'Título do Desafio', border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira um título.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _descricaoController,
                  decoration: InputDecoration(labelText: 'Descrição', border: OutlineInputBorder()),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira uma descrição.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _pontosController,
                  decoration: InputDecoration(labelText: 'Pontuação (PEREBAS)', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a pontuação.';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Insira um número válido.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                _isLoading
                    ? Center(child: CircularProgressIndicator())
                    : ElevatedButton(
                        onPressed: _lancarDesafio,
                        child: Text('Lançar Desafio'),
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

