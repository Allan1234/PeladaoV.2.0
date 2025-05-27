import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // For File
// import 'package:peladao1/services/auth_service.dart'; // Ajuste o nome do pacote se necessário
// import 'package:peladao1/services/storage_service.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  File? _fotoSelecionada;
  final ImagePicker _picker = ImagePicker();
  // final AuthService _authService = AuthService();
  // final StorageService _storageService = StorageService();
  bool _isLoading = false;

  Future<void> _selecionarFoto() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50); // Qualidade reduzida para compactação
    if (image != null) {
      setState(() {
        _fotoSelecionada = File(image.path);
      });
      print('Foto selecionada: ${image.path}');
      // A compactação real (se necessária além do imageQuality) e upload ocorrerão no _cadastrar
    } else {
      print('Nenhuma foto selecionada.');
    }
  }

  void _cadastrar() async {
    if (_fotoSelecionada == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Foto de perfil é obrigatória!'), backgroundColor: Colors.red),
      );
      return;
    }
    if (_nomeController.text.isEmpty || _emailController.text.isEmpty || _senhaController.text.isEmpty) {
       ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Preencha todos os campos!'), backgroundColor: Colors.red),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;

    print('Iniciando cadastro para: $email');
    // TODO: Implementar lógica real de cadastro (AuthService)
    // String? userId = await _authService.signUp(email, senha, nome);
    String? userId = "simulatedNewUserId"; // Simulação
    await Future.delayed(Duration(seconds: 1)); // Simular chamada de rede

    if (userId != null) {
      print('Usuário cadastrado com ID: $userId. Fazendo upload da foto...');
      // TODO: Implementar upload real da foto (StorageService)
      // String? fotoUrl = await _storageService.uploadProfilePhoto(userId, _fotoSelecionada!);
      String? fotoUrl = "https://via.placeholder.com/150/00FF00/808080?text=Profile+$userId"; // Simulação
      await Future.delayed(Duration(seconds: 1)); // Simular chamada de rede

      if (fotoUrl != null) {
        print('Foto enviada com sucesso: $fotoUrl');
        // TODO: Salvar fotoUrl no perfil do usuário (Firestore/DB)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Cadastro realizado com sucesso!'), backgroundColor: Colors.green),
        );
        // TODO: Navegar para login ou painel após cadastro
        Navigator.pop(context); // Volta para a tela de login
      } else {
        print('Erro no upload da foto.');
        // TODO: Lidar com erro de upload (talvez excluir usuário recém-criado?)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao fazer upload da foto. Tente novamente.'), backgroundColor: Colors.red),
        );
      }
    } else {
      print('Erro no cadastro do usuário.');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro durante o cadastro. Verifique os dados ou tente mais tarde.'), backgroundColor: Colors.red),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro Peladão V2')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _selecionarFoto,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: _fotoSelecionada != null ? FileImage(_fotoSelecionada!) : null,
                  child: _fotoSelecionada == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt, size: 50, color: Colors.grey[600]),
                            SizedBox(height: 5),
                            Text('Escolher Foto', style: TextStyle(color: Colors.grey[600]))
                          ],
                        )
                      : null,
                ),
              ),
              Text('(Obrigatória)', style: TextStyle(color: Colors.red)),
              SizedBox(height: 20),
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome Completo', border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 20),
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _cadastrar,
                      child: Text('Cadastrar'),
                      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
                    ),
              SizedBox(height: 10),
              TextButton(
                onPressed: _isLoading ? null : () {
                  Navigator.pop(context); // Volta para a tela de login
                },
                child: Text('Já tem conta? Faça Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

