class Liga {
  final String id;
  final String nome;
  final String adminId; // ID do técnico administrador da liga
  List<String> participantesIds; // IDs dos jogadores/técnicos participantes
  // TODO: Adicionar mais campos conforme necessário (status, regras, histórico de campeonatos, desafios ativos)

  Liga({
    required this.id,
    required this.nome,
    required this.adminId,
    this.participantesIds = const [],
  });

  // TODO: Adicionar métodos fromJson/toJson se for usar Firebase/Firestore
}

