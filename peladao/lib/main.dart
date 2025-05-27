import 'package:flutter/material.dart';
import 'package:peladao1/pages/login.dart'; // Ajuste o nome do pacote se necessário
// import 'package:peladao1/pages/painel.dart';
// import 'package:peladao1/pages/cadastro.dart';
// import 'package:peladao1/services/auth_service.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart'; // Para AdMob

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await MobileAds.instance.initialize(); // Inicializar AdMob
  // TODO: Inicializar outros serviços (Firebase, etc.) se necessário

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final AuthService _authService = AuthService(); // Instanciar serviço

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peladão V2',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Definir a rota inicial baseada no status de login
      // home: _getInitialScreen(),
      home: LoginPage(), // Começar com Login por enquanto
      routes: {
        '/login': (context) => LoginPage(),
        // '/cadastro': (context) => CadastroPage(),
        // '/painel': (context) => PainelPage(isAdmin: false), // Exemplo, ajustar lógica
        // '/painel_admin': (context) => PainelPage(isAdmin: true),
        // '/scout': (context) => ScoutPage(),
        // '/ranking': (context) => RankingPage(),
        // '/notificacoes': (context) => NotificacoesPage(),
        // Adicionar outras rotas conforme necessário
      },
    );
  }

  // Widget _getInitialScreen() {
  //   // Verificar se usuário está logado
  //   String? userId = _authService.getCurrentUserId();
  //   if (userId != null) {
  //     // TODO: Verificar se é admin e direcionar para o painel correto
  //     // bool isAdmin = await _authService.isAdmin(userId);
  //     // return PainelPage(isAdmin: false); // Placeholder
  //     return LoginPage(); // Placeholder
  //   } else {
  //     return LoginPage();
  //   }
  // }
}

