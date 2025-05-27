class Desafio {
  final String id; // Adicionar ID se for persistir no DB
  final String titulo;
  final String descricao;
  final int pontuacao;
  // TODO: Adicionar outros campos (data de criação, status, etc.)

  Desafio({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.pontuacao,
  });

  // TODO: Adicionar métodos fromJson/toJson se for usar Firebase/Firestore
}

