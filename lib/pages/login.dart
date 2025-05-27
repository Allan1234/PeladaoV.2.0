import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _senhaMestreController = TextEditingController();
  bool _isAdmin = false;

  void _login() {
    String email = _emailController.text;
    String senha = _senhaController.text;
    String senhaMestre = _senhaMestreController.text;

    // TODO: Implementar lógica de autenticação real (AuthService)
    if (senhaMestre == '24420084') {
      setState(() {
        _isAdmin = true;
      });
      print('Admin logado!');
      // TODO: Navegar para o painel de admin
      // Navigator.pushReplacementNamed(context, '/painel');
    } else {
      print('Usuário comum logado!');
      // TODO: Navegar para o painel do usuário
      // Navigator.pushReplacementNamed(context, '/painel');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Peladão V2')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Adicionar Logo aqui
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail', border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: 'Senha', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _senhaMestreController,
              decoration: InputDecoration(labelText: 'Senha Mestre (Admin)', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // TODO: Navegar para a tela de cadastro
                // Navigator.pushNamed(context, '/cadastro');
              },
              child: Text('Não tem conta? Cadastre-se'),
            ),
            Spacer(),
            Text('By Allan Gonçalves'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

