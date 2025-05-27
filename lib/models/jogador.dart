import 'package:peladao1/models/insignia.dart'; // Ajuste o nome do pacote se necessário

class Jogador {
  final String id;
  final String nome;
  final String email;
  String fotoUrl; // URL da foto compactada - pode ser atualizada
  int pontuacao;
  int valorPerebas;
  List<Insignia> insignias; // Usar o modelo Insignia
  // TODO: Adicionar mais campos conforme necessário (histórico de pontuação/valor, time, etc.)

  Jogador({
    required this.id,
    required this.nome,
    required this.email,
    required this.fotoUrl,
    this.pontuacao = 0,
    this.valorPerebas = 0,
    List<Insignia>? insignias, // Tornar opcional no construtor
  }) : this.insignias = insignias ?? []; // Inicializar lista vazia se null

  // TODO: Adicionar métodos fromJson/toJson se for usar Firebase/Firestore
  // Exemplo:
  // factory Jogador.fromJson(Map<String, dynamic> json) {
  //   return Jogador(
  //     id: json['id'],
  //     nome: json['nome'],
  //     email: json['email'],
  //     fotoUrl: json['fotoUrl'],
  //     pontuacao: json['pontuacao'] ?? 0,
  //     valorPerebas: json['valorPerebas'] ?? 0,
  //     insignias: (json['insignias'] as List?)
  //         ?.map((i) => Insignia.fromJson(i as Map<String, dynamic>))
  //         .toList() ?? [],
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'nome': nome,
  //     'email': email,
  //     'fotoUrl': fotoUrl,
  //     'pontuacao': pontuacao,
  //     'valorPerebas': valorPerebas,
  //     'insignias': insignias.map((i) => i.toJson()).toList(),
  //   };
  // }
}

