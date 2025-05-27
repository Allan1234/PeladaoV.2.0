import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// Exemplo de dados simulados
class JogadorSimulado {
  String nome;
  List<String> scouts;
  JogadorSimulado(this.nome, this.scouts);
}

class PdfService {

  // Gera um PDF de scout para um jogador específico
  Future<void> gerarRelatorioScoutPDF(JogadorSimulado jogador) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Header(
                level: 0,
                child: pw.Text('Relatório de Scout - ${jogador.nome}', style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
              ),
              pw.SizedBox(height: 20),
              pw.Text('Desempenho na Rodada:', style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 10),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: jogador.scouts.map((scout) => pw.Padding(
                  padding: const pw.EdgeInsets.only(bottom: 5),
                  child: pw.Text('- $scout'),
                )).toList(),
              ),
              pw.SizedBox(height: 30),
              pw.Divider(),
              pw.SizedBox(height: 10),
              pw.Text('Gerado por: App Peladão V2', style: pw.TextStyle(fontStyle: pw.FontStyle.italic)),
            ],
          );
        },
      ),
    );

    try {
      // Abre a visualização de impressão/salvamento do PDF
      await Printing.layoutPdf(
        onLayout: (format) async => pdf.save(),
      );
      print('Relatório PDF gerado e pronto para visualização/salvamento.');
    } catch (e) {
      print('Erro ao gerar ou exibir PDF: $e');
      // TODO: Mostrar mensagem de erro para o usuário
    }
  }

  // TODO: Adicionar outras funções de geração de PDF (ex: Relatório Final da Liga)
}

// Exemplo de como chamar o serviço (em uma página, por exemplo)
void exemploChamadaGerarPDF() {
  final pdfService = PdfService();
  final jogadorExemplo = JogadorSimulado(
    'Fulano Craque',
    ['Gol: +8 pontos', 'Assistência: +5 pontos', 'Cartão Amarelo: -2 pontos', 'Defesa Difícil: +3 pontos'],
  );
  pdfService.gerarRelatorioScoutPDF(jogadorExemplo);
}

