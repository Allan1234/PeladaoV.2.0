import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isAdmin = false;

  final String adminPassword = '24420084';

  void _login() {
    if (isAdmin) {
      if (passwordController.text == adminPassword) {
        print('Administrador logado com sucesso!');
      } else {
        print('Senha de administrador incorreta.');
      }
    } else {
      print('Jogador logado na liga com senha: ${passwordController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Peladão'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Usuário'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: isAdmin ? 'Senha Mestre' : 'Senha da Liga',
              ),
              obscureText: true,
            ),
            Row(
              children: [
                Checkbox(
                  value: isAdmin,
                  onChanged: (value) {
                    setState(() {
                      isAdmin = value!;
                    });
                  },
                ),
                Text('Sou Administrador'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
