import 'package:flutter/material.dart';
// import 'package:peladao1/pages/criar_desafio.dart'; // Ajuste o nome do pacote
// import 'package:peladao1/services/pdf_service.dart';
// import 'package:peladao1/services/liga_service.dart';

class PainelPage extends StatefulWidget {
  final bool isAdmin;
  // final String userId; // Passar userId para buscar dados específicos

  PainelPage({required this.isAdmin /*, required this.userId */});

  @override
  _PainelPageState createState() => _PainelPageState();
}

class _PainelPageState extends State<PainelPage> {
  // final PdfService _pdfService = PdfService();
  // final LigaService _ligaService = LigaService();

  void _encerrarLiga() {
    // TODO: Implementar confirmação e lógica para encerrar a liga ativa (LigaService)
    print("Chamando função para encerrar liga...");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Funcionalidade "Encerrar Liga" a ser implementada.')),
    );
  }

  void _gerarRelatorioGeralPDF() {
    // TODO: Implementar lógica para buscar dados e gerar PDF geral (PdfService)
    print("Chamando função para gerar relatório PDF geral...");
    // Exemplo: _pdfService.gerarRelatorioLigaPDF(/* dados da liga */);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Funcionalidade "Gerar Relatório PDF" a ser implementada.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isAdmin ? 'Painel Admin' : 'Painel Jogador'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // TODO: Implementar logout (AuthService)
              print("Logout pressionado");
              // Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bem-vindo!', style: Theme.of(context).textTheme.headlineMedium),
            // TODO: Adicionar nome do usuário/admin
            SizedBox(height: 20),
            // --- Destaques ---
            Text('Destaques da Rodada:', style: Theme.of(context).textTheme.titleLarge),
            // TODO: Implementar busca e exibição real dos destaques
            Card(child: ListTile(leading: Icon(Icons.star), title: Text('Jogador Mais Pontuado: Placeholder'))),
            Card(child: ListTile(leading: Icon(Icons.trending_up), title: Text('Jogador Mais Valorizado: Placeholder'))),
            Card(child: ListTile(leading: Icon(Icons.group), title: Text('Jogador Mais Escalado: Placeholder'))),
            SizedBox(height: 20),
            // --- Ações / Navegação ---
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  // Comum a todos
                  _buildDashboardCard(context, 'Scout', Icons.analytics, '/scout'),
                  _buildDashboardCard(context, 'Ranking', Icons.leaderboard, '/ranking'),
                  _buildDashboardCard(context, 'Notificações', Icons.notifications, '/notificacoes'),
                  _buildDashboardCard(context, 'Meu Time', Icons.shield, '/meu_time'), // Exemplo Jogador
                  _buildDashboardCard(context, 'Insígnias', Icons.military_tech, '/insignias'), // Exemplo Jogador

                  // Ações do Admin
                  if (widget.isAdmin)
                    _buildDashboardCard(context, 'Gerenciar Ligas', Icons.settings, '/admin/ligas'),
                  if (widget.isAdmin)
                    _buildDashboardCard(context, 'Lançar Desafio', Icons.emoji_events, '/admin/criar_desafio'),
                  if (widget.isAdmin)
                    _buildAdminActionCard(context, 'Gerar Relatório PDF', Icons.picture_as_pdf, _gerarRelatorioGeralPDF),
                  if (widget.isAdmin)
                    _buildAdminActionCard(context, 'Encerrar Liga', Icons.sports_soccer, _encerrarLiga, color: Colors.redAccent),

                ],
              ),
            ),
            // TODO: Adicionar Banner AdMob aqui se desejado
            // Container(
            //   height: 50,
            //   child: AdWidget(ad: _bannerAd), // Exemplo
            // ),
          ],
        ),
      ),
    );
  }

  // Card para navegação
  Widget _buildDashboardCard(BuildContext context, String title, IconData icon, String route) {
    return Card(
      elevation: 2.0,
      child: InkWell(
        onTap: () {
          print('Navegando para $route');
          if (route == '/admin/criar_desafio') {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => CriarDesafioPage()));
          } else {
            // TODO: Implementar navegação real para outras rotas
            // Navigator.pushNamed(context, route);
             ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Navegação para "$title" a ser implementada.')),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Theme.of(context).primaryColor),
            SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  // Card para ações diretas do Admin
  Widget _buildAdminActionCard(BuildContext context, String title, IconData icon, VoidCallback onPressed, {Color? color}) {
    return Card(
      elevation: 2.0,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color ?? Theme.of(context).primaryColor),
            SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  // TODO: Implementar lógica para carregar e exibir Banner AdMob
  // BannerAd? _bannerAd;
  // @override
  // void initState() {
  //   super.initState();
  //   _loadBannerAd();
  // }
  // void _loadBannerAd() { ... }
  // @override
  // void dispose() {
  //   _bannerAd?.dispose();
  //   super.dispose();
  // }
}

